using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicketModels
{
    public class Films
    {
        int movieId;

        public int MovieId
        {
            get { return movieId; }
            set { movieId = value; }
        }
        string movieTitle;

        public string MovieTitle
        {
            get { return movieTitle; }
            set { movieTitle = value; }
        }
        string movieDirector;

        public string MovieDirector
        {
            get { return movieDirector; }
            set { movieDirector = value; }
        }
        string movieActor;

        public string MovieActor
        {
            get { return movieActor; }
            set { movieActor = value; }
        }
        string movieType;

        public string MovieType
        {
            get { return movieType; }
            set { movieType = value; }
        }
        string movieRegion;

        public string MovieRegion
        {
            get { return movieRegion; }
            set { movieRegion = value; }
        }
        string movieLanguage;

        public string MovieLanguage
        {
            get { return movieLanguage; }
            set { movieLanguage = value; }
        }
        int movieLength;

        public int MovieLength
        {
            get { return movieLength; }
            set { movieLength = value; }
        }
        string movieDescription;

        public string MovieDescription
        {
            get { return movieDescription; }
            set { movieDescription = value; }
        }
        decimal price;

        public decimal Price
        {
            get { return price; }
            set { price = value; }
        }
    }
}
