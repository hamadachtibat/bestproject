import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';


class fexoc1 extends StatefulWidget {
  @override
  _fexoc1State createState() => _fexoc1State();
}

class _fexoc1State extends State<fexoc1> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/priorites-de-calculs-avec-parentheses-exercices.pdf'),
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
class fexoc2 extends StatefulWidget {
  @override
  _fexoc2State createState() => _fexoc2State();
}

class _fexoc2State extends State<fexoc2> {
  int _actualPageNumber = 1,
      _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(
          'assets/fractions-egales-serie-d-exercices-1.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
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
class fexoc3 extends StatefulWidget {
  @override
  _fexoc3State createState() => _fexoc3State();
}

class _fexoc3State extends State<fexoc3> {
  int _actualPageNumber = 1,
      _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(
          'assets/angles-adjacents-exercices.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
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
class fexoc4 extends StatefulWidget {
  @override
  _fexoc4State createState() => _fexoc4State();
}

class _fexoc4State extends State<fexoc4> {
  int _actualPageNumber = 1,
      _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(
          'assets/somme-des-angles-d-un-triangle-quelconque-exercices.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
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
class fexoc5 extends StatefulWidget {
  @override
  _fexoc5State createState() => _fexoc5State();
}

class _fexoc5State extends State<fexoc5> {
  int _actualPageNumber = 1,
      _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(
          'assets/reconnaitre-la-mediatrice-d-un-segment-exercices-1.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
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
class fexoc6 extends StatefulWidget {
  @override
  _fexoc6State createState() => _fexoc6State();
}

class _fexoc6State extends State<fexoc6> {
  int _actualPageNumber = 1,
      _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset(
          'assets/droites-remarquables-d-un-triangle-cours-1-ma.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      Scaffold(
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