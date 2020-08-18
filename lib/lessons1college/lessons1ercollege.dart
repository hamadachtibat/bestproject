import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';


class flc1 extends StatefulWidget {
  @override
  _flc1State createState() => _flc1State();
}

class _flc1State extends State<flc1> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/enchainements-d-operations-cours-ma.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text('PdfView'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_before),
          onPressed: () {
            _pdfController.previousPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 1000),
            );
          },
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$_actualPageNumber/$_allPagesCount',
            style: TextStyle(fontSize: 22),
          ),
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            _pdfController.nextPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 100),
            );
          },
        ),
      ],
    ),
    body: PdfView(
      documentLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      pageLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      controller: _pdfController,
      onDocumentLoaded: (document) {
        setState(() {
          _allPagesCount = document.pagesCount;
        });
      },
      onPageChanged: (page) {
        setState(() {
          _actualPageNumber = page;
        });
      },
    ),
  );
}
class flc2 extends StatefulWidget {
  @override
  _flc2State createState() => _flc2State();
}

class _flc2State extends State<flc2> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/nombres-en-ecriture-fractionnaire-cours-ma.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text('PdfView'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_before),
          onPressed: () {
            _pdfController.previousPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 1000),
            );
          },
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$_actualPageNumber/$_allPagesCount',
            style: TextStyle(fontSize: 22),
          ),
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            _pdfController.nextPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 100),
            );
          },
        ),
      ],
    ),
    body: PdfView(
      documentLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      pageLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      controller: _pdfController,
      onDocumentLoaded: (document) {
        setState(() {
          _allPagesCount = document.pagesCount;
        });
      },
      onPageChanged: (page) {
        setState(() {
          _actualPageNumber = page;
        });
      },
    ),
  );
}
class flc3 extends StatefulWidget {
  @override
  _flc3State createState() => _flc3State();
}

class _flc3State extends State<flc3> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/les-angles-cours-ma.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text('PdfView'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_before),
          onPressed: () {
            _pdfController.previousPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 1000),
            );
          },
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$_actualPageNumber/$_allPagesCount',
            style: TextStyle(fontSize: 22),
          ),
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            _pdfController.nextPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 100),
            );
          },
        ),
      ],
    ),
    body: PdfView(
      documentLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      pageLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      controller: _pdfController,
      onDocumentLoaded: (document) {
        setState(() {
          _allPagesCount = document.pagesCount;
        });
      },
      onPageChanged: (page) {
        setState(() {
          _actualPageNumber = page;
        });
      },
    ),
  );
}
class flc4 extends StatefulWidget {
  @override
  _flc4State createState() => _flc4State();
}

class _flc4State extends State<flc4> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/le-triangle-cours-1-fr.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text('PdfView'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_before),
          onPressed: () {
            _pdfController.previousPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 1000),
            );
          },
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$_actualPageNumber/$_allPagesCount',
            style: TextStyle(fontSize: 22),
          ),
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            _pdfController.nextPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 100),
            );
          },
        ),
      ],
    ),
    body: PdfView(
      documentLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      pageLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      controller: _pdfController,
      onDocumentLoaded: (document) {
        setState(() {
          _allPagesCount = document.pagesCount;
        });
      },
      onPageChanged: (page) {
        setState(() {
          _actualPageNumber = page;
        });
      },
    ),
  );
}
class flc5 extends StatefulWidget {
  @override
  _flc5State createState() => _flc5State();
}

class _flc5State extends State<flc5> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/inegalite-triangulaire-cours-ma.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text('PdfView'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_before),
          onPressed: () {
            _pdfController.previousPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 1000),
            );
          },
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$_actualPageNumber/$_allPagesCount',
            style: TextStyle(fontSize: 22),
          ),
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            _pdfController.nextPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 100),
            );
          },
        ),
      ],
    ),
    body: PdfView(
      documentLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      pageLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      controller: _pdfController,
      onDocumentLoaded: (document) {
        setState(() {
          _allPagesCount = document.pagesCount;
        });
      },
      onPageChanged: (page) {
        setState(() {
          _actualPageNumber = page;
        });
      },
    ),
  );
}
class flc6 extends StatefulWidget {
  @override
  _flc6State createState() => _flc6State();
}

class _flc6State extends State<flc6> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/droites-remarquables-d-un-triangle-cours-1-ma.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text('PdfView'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_before),
          onPressed: () {
            _pdfController.previousPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 1000),
            );
          },
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$_actualPageNumber/$_allPagesCount',
            style: TextStyle(fontSize: 22),
          ),
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            _pdfController.nextPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 100),
            );
          },
        ),
      ],
    ),
    body: PdfView(
      documentLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      pageLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      controller: _pdfController,
      onDocumentLoaded: (document) {
        setState(() {
          _allPagesCount = document.pagesCount;
        });
      },
      onPageChanged: (page) {
        setState(() {
          _actualPageNumber = page;
        });
      },
    ),
  );
}
class flc7 extends StatefulWidget {
  @override
  _flc7State createState() => _flc7State();
}

class _flc7State extends State<flc7> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/les-nombres-relatifs-definition-et-comparaison-cours-et-exercices-ma.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text('PdfView'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_before),
          onPressed: () {
            _pdfController.previousPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 1000),
            );
          },
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$_actualPageNumber/$_allPagesCount',
            style: TextStyle(fontSize: 22),
          ),
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            _pdfController.nextPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 100),
            );
          },
        ),
      ],
    ),
    body: PdfView(
      documentLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      pageLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      controller: _pdfController,
      onDocumentLoaded: (document) {
        setState(() {
          _allPagesCount = document.pagesCount;
        });
      },
      onPageChanged: (page) {
        setState(() {
          _actualPageNumber = page;
        });
      },
    ),
  );
}
class flc8 extends StatefulWidget {
  @override
  _flc8State createState() => _flc8State();
}

class _flc8State extends State<flc8> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/les-puissances-cours-1-ma.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text('PdfView'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.navigate_before),
          onPressed: () {
            _pdfController.previousPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 1000),
            );
          },
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            '$_actualPageNumber/$_allPagesCount',
            style: TextStyle(fontSize: 22),
          ),
        ),
        IconButton(
          icon: Icon(Icons.navigate_next),
          onPressed: () {
            _pdfController.nextPage(
              curve: Curves.ease,
              duration: Duration(milliseconds: 100),
            );
          },
        ),
      ],
    ),
    body: PdfView(
      documentLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      pageLoader: Center(child: CircularProgressIndicator(
        backgroundColor: Colors.purple,
      )),
      controller: _pdfController,
      onDocumentLoaded: (document) {
        setState(() {
          _allPagesCount = document.pagesCount;
        });
      },
      onPageChanged: (page) {
        setState(() {
          _actualPageNumber = page;
        });
      },
    ),
  );
}