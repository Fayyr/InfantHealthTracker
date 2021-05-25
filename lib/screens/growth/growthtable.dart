class GrowthTable {
  String bweight;
  String bheight;
  String gweight;
  String gheight;
  String age;
  GrowthTable(
      {this.age, this.bweight, this.bheight, this.gweight, this.gheight});

  static List<GrowthTable> getData() {
    return <GrowthTable>[
      GrowthTable(
          age: "1 Month",
          bweight: "9.9",
          bheight: "21.5",
          gweight: "9.2",
          gheight: "21.1"),
      GrowthTable(
          age: "2 Months",
          bweight: "12.3",
          bheight: "23",
          gweight: "11.3",
          gheight: "22.5"),
      GrowthTable(
          age: "3 Months",
          bweight: "14.1",
          bheight: "24.2",
          gweight: "12.9",
          gheight: "23.5"),
      GrowthTable(
          age: "4 Months",
          bweight: "15.3",
          bheight: "25.1",
          gweight: "14.2",
          gheight: "24.4"),
      GrowthTable(
          age: "5 Months",
          bweight: "16.6",
          bheight: "25.9",
          gweight: "15.2",
          gheight: "25.2"),
      GrowthTable(
          age: "6 Months",
          bweight: "17.5",
          bheight: "26.6",
          gweight: "16.1",
          gheight: "25.9"),
      GrowthTable(
          age: "7 Months",
          bweight: "18.3",
          bheight: "27.2",
          gweight: "16.8",
          gheight: "26.5"),
      GrowthTable(
          age: "8 Months",
          bweight: "19",
          bheight: "27.8",
          gweight: "17.5",
          gheight: "27.1"),
      GrowthTable(
          age: "9 Months",
          bweight: "19.6",
          bheight: "28.3",
          gweight: "18.1",
          gheight: "27.6"),
      GrowthTable(
          age: "10 Months",
          bweight: "20.2",
          bheight: "28.9",
          gweight: "18.7",
          gheight: "28.1"),
      GrowthTable(
          age: "11 Months",
          bweight: "20.8",
          bheight: "29.3",
          gweight: "19.2",
          gheight: "28.7"),
      GrowthTable(
          age: "12 Months",
          bweight: "21.3",
          bheight: "29.8",
          gweight: "19.7",
          gheight: "29.1"),
    ];
  }
}
