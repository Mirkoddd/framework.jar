.class Landroid/widget/TimePicker$TwKeyListener;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field private mNext:I

.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;I)V
    .registers 3
    .parameter
    .parameter "next_id"

    .prologue
    .line 654
    iput-object p1, p0, Landroid/widget/TimePicker$TwKeyListener;->this$0:Landroid/widget/TimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput p2, p0, Landroid/widget/TimePicker$TwKeyListener;->mNext:I

    .line 656
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 659
    iget-object v2, p0, Landroid/widget/TimePicker$TwKeyListener;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->TW_DEBUG:Z
    invoke-static {v2}, Landroid/widget/TimePicker;->access$800(Landroid/widget/TimePicker;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "Picker"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_13
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_1a

    .line 672
    :goto_19
    return v0

    .line 662
    :cond_1a
    sparse-switch p2, :sswitch_data_38

    goto :goto_19

    :sswitch_1e
    move v0, v1

    .line 670
    goto :goto_19

    .line 664
    :sswitch_20
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 665
    :cond_29
    iget-object v0, p0, Landroid/widget/TimePicker$TwKeyListener;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/TimePicker;->access$900(Landroid/widget/TimePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v2, p0, Landroid/widget/TimePicker$TwKeyListener;->mNext:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v0, v1

    .line 666
    goto :goto_19

    .line 662
    :sswitch_data_38
    .sparse-switch
        0x17 -> :sswitch_1e
        0x3d -> :sswitch_20
        0x42 -> :sswitch_1e
    .end sparse-switch
.end method
