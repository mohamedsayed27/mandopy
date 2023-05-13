class EndPoints{
  static const baseUrl = 'http://eibtek2-001-site14.atempurl.com/api';
  static const baseImgUrl = 'http://eibtek2-001-site14.atempurl.com/Files/Imgs/';
  static const getAllSliderImages = '/Slider1Api/GetAll';
  static const getAllCategories = '/CategoryApi/GetAll';
  static const getAllPoetry = '/PeotryApi/GetAll';
  static const getAllByCategoryId = '/PeotryApi/GetAllByCategoryId';
  static const getFav = '/Get_Faviourites_byUserId';
  static const addToFavorite = '/UserFavoriteApi/api/CreateUserFavorites';
  static const deleteFromFavorite = '/DeleteFaviourite';
  static const login = '/Auth/Login';
  static const register = '/Auth/Register';
  static const editAccount = '/Auth/EditeAccount/';
  static const termsAndConditions = '/TermsConditionsApi/GetAll';
  static const complaintsAndSuggestionAdd = '/Complaints_SuggestionsApi/Create';
  static const getUserData = '/Auth/GetAccountData/';
}