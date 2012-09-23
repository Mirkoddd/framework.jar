.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$TwTextWatcher;,
        Landroid/widget/TimePicker$TwKeyListener;,
        Landroid/widget/TimePicker$SavedState;,
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final PICKER_HOUR:I

.field private final PICKER_MINUTE:I

.field private TW_DEBUG:Z

.field private final mAmPmButton:Landroid/widget/Button;

.field private mAmPmDecrementButton:Landroid/widget/ImageButton;

.field private mAmPmIncrementButton:Landroid/widget/ImageButton;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourDecrementButton:Landroid/widget/ImageButton;

.field private mHourIncrementButton:Landroid/widget/ImageButton;

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMinuteDecrementButton:Landroid/widget/ImageButton;

.field private mMinuteIncrementButton:Landroid/widget/ImageButton;

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Landroid/widget/TimePicker$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 146
    const v0, 0x10103c2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    .line 633
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/TimePicker;->TW_DEBUG:Z

    .line 635
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    .line 637
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/TimePicker;->PICKER_HOUR:I

    .line 638
    const/4 v5, 0x1

    iput v5, p0, Landroid/widget/TimePicker;->PICKER_MINUTE:I

    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 156
    sget-object v5, Lcom/android/internal/R$styleable;->TimePicker:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 158
    .local v2, attributesArray:Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const v6, 0x10900b7

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 160
    .local v4, layoutResourceId:I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 164
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 167
    const v5, 0x102035f

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 168
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v6, Landroid/widget/TimePicker$2;

    invoke-direct {v6, p0}, Landroid/widget/TimePicker$2;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 181
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 182
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v6, 0x1020308

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 183
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const v6, 0x2000005

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 184
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 187
    const v5, 0x1020363

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    .line 188
    iget-object v5, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v5, :cond_86

    .line 189
    iget-object v5, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    const v6, 0x10400d3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 193
    :cond_86
    const v5, 0x1020360

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 194
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 195
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 196
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 197
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    sget-object v6, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 198
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v6, Landroid/widget/TimePicker$3;

    invoke-direct {v6, p0}, Landroid/widget/TimePicker$3;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 223
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    .line 224
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v6, 0x1020308

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 225
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 228
    const v5, 0x1020361

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, amPmView:Landroid/view/View;
    instance-of v5, v1, Landroid/widget/Button;

    if-eqz v5, :cond_196

    .line 230
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v6, 0x2000006

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 235
    :goto_e1
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 237
    instance-of v5, v1, Landroid/widget/Button;

    if-eqz v5, :cond_1a0

    .line 238
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 239
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v5, v1

    .line 240
    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 241
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v6, Landroid/widget/TimePicker$4;

    invoke-direct {v6, p0}, Landroid/widget/TimePicker$4;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    :goto_105
    new-instance v0, Landroid/widget/TimePicker$6;

    invoke-direct {v0, p0}, Landroid/widget/TimePicker$6;-><init>(Landroid/widget/TimePicker;)V

    .line 277
    .local v0, TouchListener:Landroid/view/View$OnTouchListener;
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mHourIncrementButton:Landroid/widget/ImageButton;

    .line 278
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    .line 280
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mHourDecrementButton:Landroid/widget/ImageButton;

    .line 281
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    .line 283
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 284
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    iget-object v5, p0, Landroid/widget/TimePicker;->mHourDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    instance-of v5, v1, Landroid/widget/Button;

    if-nez v5, :cond_15c

    .line 290
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getIncrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    .line 291
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getDecrementButton()Landroid/widget/ImageButton;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    .line 292
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    :cond_15c
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 298
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 300
    sget-object v5, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 303
    iget-object v5, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 304
    iget-object v5, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 306
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_18f

    .line 307
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 311
    :cond_18f
    invoke-direct {p0}, Landroid/widget/TimePicker;->setContentDescriptions()V

    .line 314
    invoke-direct {p0}, Landroid/widget/TimePicker;->setTextWatcher()V

    .line 315
    return-void

    .line 232
    .end local v0           #TouchListener:Landroid/view/View$OnTouchListener;
    :cond_196
    iget-object v5, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v6, 0x2000005

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_e1

    .line 249
    :cond_1a0
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    move-object v5, v1

    .line 250
    check-cast v5, Landroid/widget/NumberPicker;

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 251
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 252
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 253
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    iget-object v6, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 254
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v6, Landroid/widget/TimePicker$5;

    invoke-direct {v6, p0}, Landroid/widget/TimePicker$5;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 262
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v6, 0x1020308

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 263
    iget-object v5, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const v6, 0x2000006

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_105
.end method

.method static synthetic access$000(Landroid/widget/TimePicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TimePicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/TimePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/TimePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TimePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/TimePicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/widget/TimePicker;->TW_DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/TimePicker;)[Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method private onTimeChanged()V
    .registers 4

    .prologue
    .line 579
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 580
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1d

    .line 581
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 583
    :cond_1d
    return-void
.end method

.method private setContentDescriptions()V
    .registers 6

    .prologue
    const v4, 0x1020309

    const v3, 0x1020307

    .line 587
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x104057a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x104057b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 590
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x104057c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 593
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x104057d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_76

    .line 598
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x104057e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x104057f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 603
    :cond_76
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .parameter "locale"

    .prologue
    .line 353
    iget-object v0, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 358
    :goto_8
    return-void

    .line 356
    :cond_9
    iput-object p1, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 357
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_8
.end method

.method private setTextWatcher()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 641
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 642
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 644
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2}, Landroid/widget/TimePicker$TwTextWatcher;-><init>(Landroid/widget/TimePicker;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 645
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Landroid/widget/TimePicker$TwTextWatcher;-><init>(Landroid/widget/TimePicker;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 647
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/TimePicker$TwKeyListener;

    invoke-direct {v1, p0, v3}, Landroid/widget/TimePicker$TwKeyListener;-><init>(Landroid/widget/TimePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 648
    iget-object v0, p0, Landroid/widget/TimePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/TimePicker$TwKeyListener;

    invoke-direct {v1, p0, v2}, Landroid/widget/TimePicker$TwKeyListener;-><init>(Landroid/widget/TimePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 649
    return-void
.end method

.method private updateAmPmControl()V
    .registers 6

    .prologue
    const v4, 0x2000006

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 556
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 557
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_1f

    .line 558
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 559
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 575
    :goto_1a
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 576
    return-void

    .line 561
    :cond_1f
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1a

    .line 564
    :cond_25
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_46

    move v0, v1

    .line 565
    .local v0, index:I
    :goto_2a
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_48

    .line 566
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 567
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 568
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v2, 0x2000005

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 569
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_1a

    .line 564
    .end local v0           #index:I
    :cond_46
    const/4 v0, 0x1

    goto :goto_2a

    .line 571
    .restart local v0       #index:I
    :cond_48
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1a
.end method

.method private updateHourControl()V
    .registers 3

    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 545
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 546
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 547
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    sget-object v1, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 553
    :goto_1a
    return-void

    .line 549
    :cond_1b
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 550
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 551
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    goto :goto_1a
.end method

.method private updateInputState()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 611
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 612
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1b

    .line 613
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 614
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 615
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 624
    :cond_1b
    :goto_1b
    return-void

    .line 616
    :cond_1c
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 617
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 618
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1b

    .line 619
    :cond_31
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 620
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 621
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1b
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 435
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 436
    .local v0, currentHour:I
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 437
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 441
    :goto_10
    return-object v1

    .line 438
    :cond_11
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1c

    .line 439
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10

    .line 441
    :cond_1c
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .registers 2

    .prologue
    .line 494
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 338
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 343
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 344
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 345
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 7
    .parameter "event"

    .prologue
    .line 528
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 530
    const/4 v0, 0x1

    .line 531
    .local v0, flags:I
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_3c

    .line 532
    or-int/lit16 v0, v0, 0x80

    .line 536
    :goto_a
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 537
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 538
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, selectedDateUtterance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    return-void

    .line 534
    .end local v1           #selectedDateUtterance:Ljava/lang/String;
    :cond_3c
    or-int/lit8 v0, v0, 0x40

    goto :goto_a
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 416
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$SavedState;

    .line 417
    .local v0, ss:Landroid/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 418
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 419
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 420
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 410
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 411
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 4
    .parameter "currentHour"

    .prologue
    const/16 v1, 0xc

    .line 450
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 470
    :cond_a
    :goto_a
    return-void

    .line 453
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 455
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_3a

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 457
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2a

    .line 458
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 466
    :cond_2a
    :goto_2a
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 468
    :cond_2d
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 469
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_a

    .line 461
    :cond_3a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 462
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2a

    .line 463
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2a
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 4
    .parameter "currentMinute"

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 513
    :goto_6
    return-void

    .line 511
    :cond_7
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 512
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_6
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_5

    .line 334
    :goto_4
    return-void

    .line 322
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 324
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 325
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 327
    :cond_16
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_27

    .line 329
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 333
    :goto_24
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    goto :goto_4

    .line 331
    :cond_27
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_24
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "is24HourView"

    .prologue
    .line 478
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_9

    .line 488
    :goto_8
    return-void

    .line 481
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    .line 483
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 484
    .local v0, currentHour:I
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 487
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    goto :goto_8
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2
    .parameter "onTimeChangedListener"

    .prologue
    .line 428
    iput-object p1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 429
    return-void
.end method
