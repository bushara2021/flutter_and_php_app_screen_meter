class Data {
  final double screenReading;
  final String screenDate;
  final double consumptionReading;
  final int advertsId;
  final String advertsTitle;
  final String advertsDate;
  final String advertsText;
  final int notificationId;
  final String notificationState;
  final String notificationDate;
  final String notificationText;
  final String notificationType;
  final String customerLocation;
  final int customerPhone;

  const Data(
      this.screenReading,
      this.screenDate,
      this.consumptionReading,
      this.advertsId,
      this.advertsTitle,
      this.advertsDate,
      this.advertsText,
      this.notificationId,
      this.notificationState,
      this.notificationDate,
      this.notificationText,
      this.customerLocation,
      this.notificationType,
      this.customerPhone);
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        json['screen_reading'],
        json['date'],
        json['consumption_reading'],
        json['id'],
        json['title'],
        json['created_at'],
        json['text'],
        json['id'],
        json['selve'],
        json['created_at'],
        json['text'],
        json['location'],
        json['typ_t'],
        json['phone']);
  }
}
