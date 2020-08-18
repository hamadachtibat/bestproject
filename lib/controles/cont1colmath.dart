import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';


class con1math1 extends StatefulWidget {
  @override
  _con1math1State createState() => _con1math1State();
}

class _con1math1State extends State<con1math1> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/devoir-1-modele-1-mathematiques-1ac-semestre-1.pdf'),
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
class con1math2 extends StatefulWidget {
  @override
  _con1math2State createState() => _con1math2State();
}

class _con1math2State extends State<con1math2> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/devoir-2.pdf'),
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
class con1math3 extends StatefulWidget {
  @override
  _con1math3State createState() => _con1math3State();
}

class _con1math3State extends State<con1math3> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;
  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/devoir-3.pdf'),
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