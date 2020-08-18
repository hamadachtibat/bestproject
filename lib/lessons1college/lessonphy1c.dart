import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';


class flphyc1 extends StatefulWidget {
  @override
  _flphyc1State createState() => _flphyc1State();
}

class _flphyc1State extends State<flphyc1> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/l-eau-dans-notre-environnement-cours-1.pdf'),
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
class flphyc2 extends StatefulWidget {
  @override
  _flphyc2State createState() => _flphyc2State();
}

class _flphyc2State extends State<flphyc2> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/l-eau-dans-notre-environnement-cours-1.pdf'),
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