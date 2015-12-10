# ITCTCatalog2015
서울대학교 정보문화학과 `인터페이스 프로그래밍` 수업 기말 프로젝트를 위한 리포지터리

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
