.class public Landroid/widget/DatePicker$TwTextWatcher;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;IIZ)V
    .registers 7
    .parameter
    .parameter "maxLen"
    .parameter "id"
    .parameter "month"

    .prologue
    .line 1081
    iput-object p1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    iput p2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    .line 1083
    iput p3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    .line 1084
    iput-boolean p4, p0, Landroid/widget/DatePicker$TwTextWatcher;->isMonth:Z

    .line 1086
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    .line 1087
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_18

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    .line 1089
    :cond_18
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_23

    const/4 v0, -0x1

    :goto_20
    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    .line 1090
    return-void

    .line 1089
    :cond_23
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method private changeFocus()V
    .registers 4

    .prologue
    .line 1148
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "changeFocus() mNext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCheck : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1150
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    if-ltz v0, :cond_76

    .line 1151
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_59

    .line 1152
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1155
    :cond_59
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1156
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1159
    :cond_76
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1094
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1097
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 1099
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1102
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1104
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1105
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_86

    .line 1106
    const-string/jumbo v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string/jumbo v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1107
    :cond_5b
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAG exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1144
    :cond_85
    :goto_85
    return-void

    .line 1112
    :cond_86
    iget-boolean v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->isMonth:Z

    if-eqz v1, :cond_19b

    .line 1113
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->isNumMonth:Z
    invoke-static {v1}, Landroid/widget/DatePicker;->access$400(Landroid/widget/DatePicker;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 1114
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Samsung Keypad Num Month"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$1600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1116
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_d4

    .line 1117
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1118
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_85

    .line 1120
    :cond_d4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_85

    .line 1121
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 1122
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1123
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_85

    .line 1128
    :cond_106
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 1132
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-lt v1, v2, :cond_85

    .line 1133
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_85

    .line 1138
    :cond_19b
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_85

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_85

    .line 1139
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    #getter for: Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker;->access$1800(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1140
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto/16 :goto_85
.end method
