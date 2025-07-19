using Microsoft.Win32;
using System.Collections.ObjectModel;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using PdfSharp.Pdf;
using PdfSharp.Drawing;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public ObservableCollection<Images> Image { get; set; } 
        public MainWindow()
        {
                InitializeComponent();
            Image = new ObservableCollection<Images>();
                this.DataContext = this;
        }

        private void SelectImages_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();

            openFileDialog.Title = "Select Images";
            openFileDialog.Filter = "Image Files (*.png;*.jpg;*.jpeg;)|*.png;*.jpg;*.jpeg";
            openFileDialog.Multiselect = true; // allows choosing multiple files

            if (openFileDialog.ShowDialog() == true)
            {
                string[] selectedFiles = openFileDialog.FileNames;

                // Do something with the selected files, like add to a ListBox or process them
                foreach (string file in selectedFiles)
                {
                    Image.Add(new Images
                            { ImagePath = $"{file}", ImageName = System.IO.Path.GetFileName(file) }
                        );
                }
            }

        }
        private void ConvertToPdf_Click(object sender, RoutedEventArgs e)
        {
            if (Image.Count == 0)
            {
                MessageBox.Show("Please select images first.");
                return;
            }

            PdfDocument pdf = new PdfDocument();

            foreach (var imgPath in Image)
            {
                PdfPage page = pdf.AddPage();
                using (XGraphics gfx = XGraphics.FromPdfPage(page))
                using ( XImage image = XImage.FromFile(imgPath.ImagePath))
                {
                    // Resize page to fit the image
                    page.Width = image.PixelWidth * 72 / image.HorizontalResolution;
                    page.Height = image.PixelHeight * 72 / image.VerticalResolution;
                    gfx.DrawImage(image, 0, 0, page.Width, page.Height);
                }
            }

            SaveFileDialog saveDialog = new SaveFileDialog();

            saveDialog.Filter = "PDF (*.pdf)|*.pdf";

            if (saveDialog.ShowDialog() == true)
            {
                pdf.Save(saveDialog.FileName);
                MessageBox.Show("PDF created successfully!");
            }
        }
        private void RemoveImage_Click(object sender, RoutedEventArgs e)
        {
            var Button= sender as Button;
            var item = Button.DataContext;
            Image.Remove(item as Images);

        }
        private void MoveUpwards(object sender, RoutedEventArgs e)
        {
            var Button = sender as Button;
            var item = Button.DataContext as Images;
            int index = Image.IndexOf(item);
            if (index > 0)
            {
                Image.Move(index, index - 1);
            }
        }
        private void MoveDownwards(object sender, RoutedEventArgs e)
        {
            var Button = sender as Button;
            var item = Button.DataContext as Images;
            int index = Image.IndexOf(item);
            if (index < Image.Count - 1)
            {
                Image.Move(index, index + 1);
            }
        }   
    }

    public class Images
    {
        public string ImagePath { get; set; }
        public string ImageName { get; set; }
    }
}