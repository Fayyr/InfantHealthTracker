class VaccineTable {
  String name;
  String age;
  VaccineTable({this.age, this.name});

  static List<VaccineTable> getVaccData() {
    return <VaccineTable>[
      VaccineTable(
        age: "Birth",
        name: "\nOPV-1\nBCG\nHB-1\n ",
      ),
      VaccineTable(
        age: "6 weeks",
        name:
            "\nDiptheria\nTetanus\nDTP-1\nIPV-1\nHB-2\nHiB-1\nRotavirus-1\nPCV-1\n",
      ),
      VaccineTable(
        age: "10 weeks",
        name:
            "\nDiptheria\nTetanus\nDTP-2\nIPV-2\nHB-3\nHiB-2\nRotavirus-2\nPCv-2\n",
      ),
      VaccineTable(
        age: "14 weeks",
        name: "\nDTP-3\nIPV-3\nHB-4\nHiB-3\nRotavirus-3\nPCB-3\n",
      ),
      VaccineTable(
        age: "6 Months",
        name: "\nTCV\n",
      ),
      VaccineTable(
        age: "9 Months",
        name: "\nMMR-1\nMCV-1\n",
      ),
      VaccineTable(
        age: "12 Months",
        name: "\nHep-A1\nInfluenza\nMCV-2\nJE-1\n",
      ),
      VaccineTable(
        age: "13 Months",
        name: "\nJE-2\n",
      ),
      VaccineTable(
        age: "15 Months",
        name: "\nMMR-2\nVaricella\nPCV-B1\nCholera-1&2\n",
      ),
    ];
  }
}
