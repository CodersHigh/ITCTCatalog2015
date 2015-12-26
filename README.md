# ITCTCatalog2015
[서울대학교 정보문화학과](http://itct.snu.ac.kr) `인터페이스 프로그래밍` 2015년 2학기 수업 기말 프로젝트를 위한 리포지터리

## Prototypes

### Completry
<a href = "./SanghoonHan/">
Completry by 한상훈

<img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/SanghoonHan/Presentaion/CompletryScreenshot1.png" alt="Completry Screenshot" height="200" > <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/SanghoonHan/Presentaion/CompletryScreenshot2.png" alt="Completry Screenshot" height="200" > <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/SanghoonHan/Presentaion/CompletryScreenshot3.png" alt="Completry Screenshot" height="200" ></a>


### Joywalk
<a href = "./Jaehyeon/">
Joywalk by 박재현

<img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/Jaehyeon/presentation/joywalk1.jpg" alt="Joywalk Screenshot" height="200" > <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/Jaehyeon/presentation/joywalk2.jpg" alt="Joywalk Screenshot" height="200" > <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/Jaehyeon/presentation/joywalk3.jpg" alt="Joywalk Screenshot" height="200" ></a>

### Wookfit


<a href = "./Wookjae%20Maeng/">

Wookfit by 맹욱재

<img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/Wookjae%20Maeng/Presentation/WoofitScreenshot1.png" alt="Wookfit Screenshot" height="200"> <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/Wookjae%20Maeng/Presentation/WoofitScreenshot2.png" alt="Wookfit Screenshot" height="200"> <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/Wookjae%20Maeng/Presentation/WoofitScreenshot3.png" alt="Wookfit Screenshot" height="200" ></a>


### HandPlotter
<a href = "./JuSeopYeom/">
HandPlotter by 염주섭

<img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/JuSeopYeom/Presentation/HandPlotterScreenshot1.png" alt="HandPlotter Screenshot" height="200"> <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/JuSeopYeom/Presentation/HandPlotterScreenshot2.png" alt="HandPlotter Screenshot" height="200"> <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/JuSeopYeom/Presentation/HandPlotterScreenshot3.png" alt="HandPlotter Screenshot" height="200" ></a>

### Fairing
<a href = "./JangJiwoo/">
Fairing by 장지우
</a>

### Art_in
<a href = "./Snowcat(SeungHwan)Jung/">
Art in by 정승환

<img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/Snowcat(SeungHwan)Jung/Presentation/Art_In%20Screenshot1.png" alt="Artin Screenshot" height="200"> <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/Snowcat(SeungHwan)Jung/Presentation/Art_In%20Screenshot2.png" alt="Artin Screenshot" height="200"> <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/Snowcat(SeungHwan)Jung/Presentation/Art_In%20Screenshot3.png" alt="Artin Screenshot" height="200"></a>

### Pineco
<a href = "./JaeHeung/">
Pineco by 한재흥

<img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/JaeHeung/Presentation/PinecoScreenshot1.png" alt="Pineco Screenshot" height="200"> <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/JaeHeung/Presentation/PinecoScreenshot2.png" alt="Pineco Screenshot" height="200"> <img src="https://raw.githubusercontent.com/CodersHigh/ITCTCatalog2015/master/JaeHeung/Presentation/PinecoScreenshot3.png" alt="Pineco Screenshot" height="200"></a>

## 폴더 구조와 기말 프로젝트 구성
여러명이 공동으로 작업하는 공간이므로 폴더 사용의 원칙을 지켜주세요.

 * CatalogApp : 최종 앱이 만들어지는 폴더입니다. 특별한 이유 없이 손 대지 마세요
 * Common : Xcode 프로젝트가 공통으로 참조하는 파일이 있습니다. 일단은 PilotPlantFramework이 여기에 있겠네요. 특별한 이유 없이 손 대지 마세요
 * AlexYoon : 개인의 이름으로 폴더를 만듭니다.
  * Mockups : 목업 스케치와 동작 비디오를 넣습니다.
  * MyGreatApp : 기말 프로젝트. 아래 주의 사항을 지켜주세요
      1. Framework는 Copy 하지 않고 Reference 합니다
      2. 스토리보드 파일은 Main.storyboard에서 MyGreatApp.storyboard로 이름 변경
      3. 모든 이미지는 Assets.xcassets에 넣어서 관리하세요
      4. pull request 날리기 전에 프로젝트내에 리소스 파일 유무 확인하고 폴더 정리합니다. 프로젝트 폴더를 다른 드라이브로 복사해서 Build 해 보세요.
  * Presentation : 프레젠테이션을 위해 아래 항목을 넣습니다.
    * MyGreatAppVideo.mov : 3분 이내의 동작 동영상
    * MyGreatAppSlide.keynote | .ppt : ADS 부터 앱의 멘탈모델, 페르소나 등 앱에 대한 설명 표지 포함 5장 이내
    * MyGreatAppScreenshot1.png : 대표적 스크린샷 1
    * MyGreatAppScreenshot2.png : 대표적 스크린샷 2
    * MyGreatAppScreenshot3.png : 대표적 스크린샷 3
    * MyGreatAppStoryboard.png : 스토리보드 100% 크기에서 캡처한 뒤 그래픽스 툴로 이어붙임. 축소한 이미지 스크린샷 금지.
    * MyGreatAppPanel.eps | svg | pdf : 전시용 패널 디자인. ai 파일 금지. svg | pdf 권장. eps 수용
