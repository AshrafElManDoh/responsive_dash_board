class TransactionHistoryItemModel {
  final String transactionName ,date ,amount ;
  final bool isWithdraw; 

  const TransactionHistoryItemModel( {required this.isWithdraw,required this.transactionName, required this.date, required this.amount});
}