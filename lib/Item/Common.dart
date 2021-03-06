//单例模式设计
//单例的类Common
class Common{
  //factory关键字
  //工厂模式: 单例公开访问点
  factory Common()=>_getInstance();
  //静态未初始化对象--单例对象
  static Common _instance;
  static Common _getInstance(){
    if(_instance==null){
      _instance=Common._internal();
    }
    return _instance;
  }

  Common._internal();//初始化函数
  //SD卡根路径
  String sDCardDir;
  //存放收藏文件夹目录的文件
  String favoriteDir;
  List<String> favoriteFileList=new List<String>();
  String favoriteAll='';

  String getFileSize(int fileSize){
    String str ='';

    if(fileSize<1024){
      str='${fileSize.toStringAsFixed(2)}B';//toStringAsFixed(2)  保留两位小数 四舍五入
    }else if(1024<=fileSize&&fileSize<1048576){
      str='${(fileSize/1024).toStringAsFixed(2)}KB';
    }else if(1048576<=fileSize&&fileSize<1073741824){
      str = '${(fileSize / 1024 / 1024).toStringAsFixed(2)}MB';
    }
    return str;
  }

  String selectIcon(String ext) {
    String iconImg = 'assets/images/unknown.png';

    switch (ext) {
      case '.ppt':
      case '.pptx':
        iconImg = 'assets/images/ppt.png';
        break;
      case '.doc':
      case '.docx':
        iconImg = 'assets/images/word.png';
        break;
      case '.xls':
      case '.xlsx':
        iconImg = 'assets/images/excel.png';
        break;
      case '.pdf':
        iconImg = 'assets/images/pdf.png';
        break;
      case '.jpg':
      case '.jpeg':
      case '.png':
        iconImg = 'assets/images/image.png';
        break;
      case '.txt':
        iconImg = 'assets/images/txt.png';
        break;
      case '.flac':
      case '.mp3':
        iconImg = 'assets/images/audio.png';
        break;
      case '.mp4':
        iconImg = 'assets/images/video.png';
        break;
      case '.rar':
      case '.zip':
        iconImg = 'assets/images/zip.png';
        break;
      case '.psd':
        iconImg = 'assets/images/psd.png';
        break;
      case '.apk':
        iconImg='assets/images/apk.png';
        break;
      default:
        iconImg = 'assets/images/file.png';
        break;
    }
    return iconImg;
  }
}