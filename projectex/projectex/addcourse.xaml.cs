using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace projectex
{
    /// <summary>
    /// Interaction logic for addcourse.xaml
    /// </summary>
    /// 
 
    public partial class addcourse : Window
    {

        Context context = new Context();
        public addcourse()
        {
            InitializeComponent();
        }
       
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                cmb1.ItemsSource = context.Tracks.ToList();
                cmb1.DisplayMemberPath = "Track_Name";
                cmb1.SelectedValue = "Track_Id";
                cmb1.SelectedIndex = 0;

                cmb2.ItemsSource = context.Instructors.ToList();
                cmb2.DisplayMemberPath = "Instructor_Name";
                cmb2.SelectedValue = "Instructor_Id";
                cmb2.SelectedIndex = 0;
            }
            catch (Exception E)
            {
                MessageBox.Show("Some invalid input!! please try again", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            { 
            if (coursename.Text != "" && maxdegree.Text != "" && mindegree.Text != "" && discription.Text != "" && cmb1.SelectedIndex != -1 && cmb2.SelectedIndex != -1)
            {
                var trackid = ((Track)cmb1.SelectedValue);
                int track_id1 = trackid.Track_Id;

                var instructoridx = ((Instructor)cmb2.SelectedValue);
                int instructor_id1 = instructoridx.Instructor_Id;

                string course_name = coursename.Text;
                string coursediscribe = discription.Text;
                int max = int.Parse(maxdegree.Text);
                int min = int.Parse(mindegree.Text);

                var course = new Course
                {
                    Course_Name = course_name,
                    Course_eDiscription = coursediscribe,
                    Max_Degree = max,
                    Min_Degree = min,
                    Instructor_Id = instructor_id1,
                    Track_Id = track_id1
                };
                context.Courses.Add(course);
                context.SaveChanges();
                MessageBox.Show("Course added successfully", "successfully completed",MessageBoxButton.OK,MessageBoxImage.Information);
                coursename.Text = "";
                discription.Text = "";
                maxdegree.Text = "";
                mindegree.Text = "";
                cmb1.SelectedIndex = 0;
                cmb2.SelectedIndex = 0;
            }
            else
            {
                MessageBox.Show("Please , Fill all the fields First.","Warning",MessageBoxButton.OK,MessageBoxImage.Warning);
            }
        }
                        catch (Exception E)
            {
                MessageBox.Show("Some invalid input!! please try again","Error",MessageBoxButton.OK,MessageBoxImage.Error);
            }
        }

    
    }
}
