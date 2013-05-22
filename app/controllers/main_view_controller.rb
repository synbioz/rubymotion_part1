class MainViewController < UIViewController

  def loadView
    self.view = UIView.alloc.init

    background_view = UIImageView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    background_view.image = UIImage.imageNamed("customBackground.jpg")
    self.view.addSubview(background_view)

    helloLabel = UILabel.alloc.initWithFrame [[110, 20], [200, 50]]
    helloLabel.backgroundColor = UIColor.clearColor
    helloLabel.textColor = UIColor.whiteColor
    helloLabel.text = "Hello World!"

    self.view.addSubview(helloLabel)

    timeLabel = UILabel.alloc.initWithFrame [[90, 60], [200, 50]]
    timeLabel.backgroundColor = UIColor.clearColor
    timeLabel.textColor = UIColor.whiteColor

    # Initialisation d'un calendrier à la date / heure actuelle
    calendar = NSCalendar.alloc.initWithCalendarIdentifier(NSGregorianCalendar)
    date = NSDate.date
    calendar.components(NSMinuteCalendarUnit, fromDate: date)

    # Utilisation de la locale fr_FR pour formater les dates
    fr_FR = NSLocale.alloc.initWithLocaleIdentifier "fr_FR"

    format = NSDateFormatter.alloc.init
    format.locale = fr_FR
    format.setDateFormat("dd MMM yyyy - HH:mm")

    # Convertion de la date en chaine
    dateString = format.stringFromDate(date)

    timeLabel.text = dateString

    self.view.addSubview(timeLabel)
  end

end
