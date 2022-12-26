class ListReViewModel{
  String? image;
  String? name;
  String? time;
  String? content;
  ListReViewModel();
}
List<ListReViewModel> reviewModel = [
  ListReViewModel()..image = 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'
  ..name = 'Kang Jhon'
  ..time = '3 Hours 43 Minute Ago'
  ..content = 'The rooms are nice and very tidy. the mattress is soft plus a soft blanket makes sleeping very comfortable',
  ListReViewModel()..image = 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'
  ..name = 'Kang Ecep'
  ..time = '4 Days Ago'
  ..content = 'Im very happy with the view that can be seen from inside the hotel',
];