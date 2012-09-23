.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CCC_LENGTH:I = 0x0

.field private static final CLIDIGITS_KEY:Ljava/lang/String; = "Clidigits"

.field private static final CLIDIGITS_PREFERENCES_NAME:Ljava/lang/String; = "clidigits.preferences_name"

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#+"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#+"

.field private static final COUNTRY_CALLING_CALL:[Z = null

.field private static final DBG:Z = false

.field private static final ECC_CATEGORY_Ambulance:I = 0x2

.field private static final ECC_CATEGORY_Default_Emergency_Center:I = 0x0

.field private static final ECC_CATEGORY_Drug_Report:I = 0x11

.field private static final ECC_CATEGORY_Fire_Brigade:I = 0x4

.field private static final ECC_CATEGORY_Marine_Guard:I = 0x8

.field private static final ECC_CATEGORY_Mountain_Rescue:I = 0x10

.field private static final ECC_CATEGORY_National_Intelligence_Service_KT:I = 0x7

.field private static final ECC_CATEGORY_National_Intelligence_Service_SKT:I = 0x6

.field private static final ECC_CATEGORY_Normal_Call:I = 0xff

.field private static final ECC_CATEGORY_Police:I = 0x1

.field private static final ECC_CATEGORY_Smuggling_Report:I = 0x9

.field private static final ECC_CATEGORY_Spy_Report:I = 0x3

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_KOREA:I = 0x52

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray; = null

.field private static final KRNP_STATE_0505_START:I = 0xe

.field private static final KRNP_STATE_AREA_SEOUL:I = 0x6

.field private static final KRNP_STATE_EXCEPT_CASE_1:I = 0xa

.field private static final KRNP_STATE_EXCEPT_CASE_2:I = 0xb

.field private static final KRNP_STATE_NORMAL:I = 0x5

.field private static final KRNP_STATE_PLUS:I = 0x9

.field private static final KRNP_STATE_SHARP:I = 0xd

.field private static final KRNP_STATE_SHARP_NINE:I = 0x8

.field private static final KRNP_STATE_STAR:I = 0xc

.field private static final KRNP_STATE_ZERO_START:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String; = null

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PAUSE:I = 0x5

.field private static final NANP_STATE_PLUS:I = 0x2

.field private static final NANP_STATE_WAIT:I = 0x6

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    .line 120
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1247
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 2630
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2632
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2633
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2635
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2636
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2638
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2639
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2641
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2642
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2644
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2645
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2647
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2648
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2650
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2651
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2653
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2654
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3114
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_246

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 3126
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 3114
    :array_246
    .array-data 0x1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3149
    return-void
.end method

.method public static DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 1121
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method private static DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 20
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1192
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 1193
    .local v9, numberLenReal:I
    move v8, v9

    .line 1194
    .local v8, numberLenEffective:I
    const/16 v15, 0x2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3a

    const/4 v4, 0x1

    .line 1195
    .local v4, hasPlus:Z
    :goto_14
    const/16 v15, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3c

    const/4 v5, 0x1

    .line 1196
    .local v5, hasSharp:Z
    :goto_23
    const/16 v15, 0x2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3e

    const/4 v6, 0x1

    .line 1198
    .local v6, hasStar:Z
    :goto_32
    if-eqz v4, :cond_36

    add-int/lit8 v8, v8, -0x1

    .line 1200
    :cond_36
    if-nez v8, :cond_40

    const/4 v12, 0x0

    .line 1229
    :cond_39
    :goto_39
    return-object v12

    .line 1194
    .end local v4           #hasPlus:Z
    .end local v5           #hasSharp:Z
    .end local v6           #hasStar:Z
    :cond_3a
    const/4 v4, 0x0

    goto :goto_14

    .line 1195
    .restart local v4       #hasPlus:Z
    :cond_3c
    const/4 v5, 0x0

    goto :goto_23

    .line 1196
    .restart local v5       #hasSharp:Z
    :cond_3e
    const/4 v6, 0x0

    goto :goto_32

    .line 1202
    .restart local v6       #hasStar:Z
    :cond_40
    add-int/lit8 v15, v8, 0x1

    div-int/lit8 v13, v15, 0x2

    .line 1203
    .local v13, resultLen:I
    const/4 v3, 0x1

    .line 1204
    .local v3, extraBytes:I
    if-eqz p1, :cond_49

    add-int/lit8 v3, v3, 0x1

    .line 1205
    :cond_49
    add-int/2addr v13, v3

    .line 1207
    new-array v12, v13, [B

    .line 1209
    .local v12, result:[B
    const/4 v2, 0x0

    .line 1210
    .local v2, digitCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4e
    if-ge v7, v9, :cond_86

    .line 1211
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1212
    .local v1, c:C
    const/16 v15, 0x2b

    if-ne v1, v15, :cond_5d

    .line 1210
    :goto_5a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    .line 1213
    :cond_5d
    and-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_84

    const/4 v14, 0x4

    .line 1214
    .local v14, shift:I
    :goto_66
    shr-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v3

    aget-byte v16, v12, v15

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v17

    and-int/lit8 v17, v17, 0xf

    shl-int v17, v17, v14

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v15

    .line 1215
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 1213
    .end local v14           #shift:I
    :cond_84
    const/4 v14, 0x0

    goto :goto_66

    .line 1219
    .end local v1           #c:C
    :cond_86
    and-int/lit8 v15, v2, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a0

    shr-int/lit8 v15, v2, 0x1

    add-int/2addr v15, v3

    aget-byte v16, v12, v15

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0xf0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v15

    .line 1221
    :cond_a0
    const/4 v10, 0x0

    .line 1222
    .local v10, offset:I
    if-eqz p1, :cond_ab

    add-int/lit8 v11, v10, 0x1

    .end local v10           #offset:I
    .local v11, offset:I
    add-int/lit8 v15, v13, -0x1

    int-to-byte v15, v15

    aput-byte v15, v12, v10

    move v10, v11

    .line 1223
    .end local v11           #offset:I
    .restart local v10       #offset:I
    :cond_ab
    if-eqz v4, :cond_bf

    const/16 v15, 0x91

    :goto_af
    int-to-byte v15, v15

    aput-byte v15, v12, v10

    .line 1225
    if-nez v5, :cond_b6

    if-eqz v6, :cond_39

    .line 1226
    :cond_b6
    aget-byte v15, v12, v10

    and-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    aput-byte v15, v12, v10

    goto/16 :goto_39

    .line 1223
    :cond_bf
    const/16 v15, 0x81

    goto :goto_af
.end method

.method private static KorMsgbcdToChar(B)C
    .registers 2
    .parameter "b"

    .prologue
    .line 1031
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1032
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1039
    :goto_7
    return v0

    .line 1033
    :cond_8
    packed-switch p0, :pswitch_data_1c

    .line 1039
    const/4 v0, 0x0

    goto :goto_7

    .line 1034
    :pswitch_d
    const/16 v0, 0x2a

    goto :goto_7

    .line 1035
    :pswitch_10
    const/16 v0, 0x23

    goto :goto_7

    .line 1036
    :pswitch_13
    const/16 v0, 0x61

    goto :goto_7

    .line 1037
    :pswitch_16
    const/16 v0, 0x62

    goto :goto_7

    .line 1038
    :pswitch_19
    const/16 v0, 0x63

    goto :goto_7

    .line 1033
    :pswitch_data_1c
    .packed-switch 0xa
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method private static addPlusChar(Ljava/lang/String;)I
    .registers 3
    .parameter "number"

    .prologue
    .line 421
    const/4 v0, -0x1

    .line 423
    .local v0, pos:I
    const-string v1, "#31#+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 424
    const-string v1, "#31#+"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 427
    :cond_11
    const-string v1, "*31#+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 428
    const-string v1, "*31#+"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 431
    :cond_21
    return v0
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "dialableIndex"
    .parameter "origStr"
    .parameter "dialStr"

    .prologue
    const/4 v4, 0x0

    .line 2974
    const/4 v3, 0x1

    if-ne p0, v3, :cond_16

    .line 2975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2976
    .local v1, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2977
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2984
    .end local v1           #ret:Ljava/lang/StringBuilder;
    .local v2, retStr:Ljava/lang/String;
    :goto_15
    return-object v2

    .line 2981
    .end local v2           #retStr:Ljava/lang/String;
    :cond_16
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2982
    .local v0, nonDigitStr:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #retStr:Ljava/lang/String;
    goto :goto_15
.end method

.method private static bcdToChar(B)C
    .registers 2
    .parameter "b"

    .prologue
    .line 1017
    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    .line 1018
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1025
    :goto_7
    return v0

    .line 1019
    :cond_8
    packed-switch p0, :pswitch_data_1a

    .line 1025
    const/4 v0, 0x0

    goto :goto_7

    .line 1020
    :pswitch_d
    const/16 v0, 0x2a

    goto :goto_7

    .line 1021
    :pswitch_10
    const/16 v0, 0x23

    goto :goto_7

    .line 1022
    :pswitch_13
    const/16 v0, 0x2c

    goto :goto_7

    .line 1023
    :pswitch_16
    const/16 v0, 0x4e

    goto :goto_7

    .line 1019
    nop

    :pswitch_data_1a
    .packed-switch 0xa
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .registers 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1009
    .local v0, ret:Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1011
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .registers 15
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 855
    const/4 v2, 0x0

    .line 856
    .local v2, prependPlus:Z
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 858
    .local v3, ret:Ljava/lang/StringBuilder;
    if-ge p2, v7, :cond_14

    .line 859
    const-string v5, ""

    .line 950
    :goto_13
    return-object v5

    .line 863
    :cond_14
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1d

    .line 864
    const/4 v2, 0x1

    .line 867
    :cond_1d
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 870
    if-eqz v2, :cond_2f

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2f

    .line 872
    const-string v5, ""

    goto :goto_13

    .line 875
    :cond_2f
    if-eqz v2, :cond_77

    .line 901
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 902
    .local v4, retString:Ljava/lang/String;
    const-string v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 903
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 904
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 905
    const-string v5, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 910
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    .end local v4           #retString:Ljava/lang/String;
    :cond_77
    :goto_77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    .line 919
    .restart local v0       #m:Ljava/util/regex/Matcher;
    .restart local v1       #p:Ljava/util/regex/Pattern;
    .restart local v4       #retString:Ljava/lang/String;
    :cond_7c
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 920
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 928
    :cond_aa
    const-string v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 929
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 935
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    const-string v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    .line 943
    :cond_e1
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #ret:Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 944
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "dialStr"

    .prologue
    .line 2692
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 2693
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2695
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2696
    .local v0, currIso:Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2697
    .local v1, defaultIso:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 2698
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2704
    .end local v0           #currIso:Ljava/lang/String;
    .end local v1           #defaultIso:Ljava/lang/String;
    .end local p0
    :cond_3f
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .parameter "dialStr"
    .parameter "currFormat"
    .parameter "defaultFormat"

    .prologue
    const/4 v7, 0x1

    .line 2736
    move-object v3, p0

    .line 2739
    .local v3, retStr:Ljava/lang/String;
    if-eqz p0, :cond_49

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_49

    .line 2743
    if-ne p1, p2, :cond_61

    if-ne p1, v7, :cond_61

    .line 2745
    const/4 v2, 0x0

    .line 2746
    .local v2, postDialStr:Ljava/lang/String;
    move-object v4, p0

    .line 2749
    .local v4, tempDialStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2756
    :cond_14
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2758
    .local v1, networkDialStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2761
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 2762
    if-nez v3, :cond_4b

    .line 2763
    move-object v3, v1

    .line 2774
    :goto_25
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2775
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 2776
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 2779
    .local v0, dialableIndex:I
    if-lt v0, v7, :cond_56

    .line 2780
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2783
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2795
    .end local v0           #dialableIndex:I
    :cond_3d
    :goto_3d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_49
    :goto_49
    move-object p0, v3

    .line 2803
    .end local p0
    :goto_4a
    return-object p0

    .line 2765
    .restart local v1       #networkDialStr:Ljava/lang/String;
    .restart local v2       #postDialStr:Ljava/lang/String;
    .restart local v4       #tempDialStr:Ljava/lang/String;
    .restart local p0
    :cond_4b
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 2771
    :cond_50
    const-string v5, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 2788
    .restart local v0       #dialableIndex:I
    :cond_56
    if-gez v0, :cond_5a

    .line 2789
    const-string v2, ""

    .line 2791
    :cond_5a
    const-string/jumbo v5, "wrong postDialStr="

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 2800
    .end local v0           #dialableIndex:I
    .end local v1           #networkDialStr:Ljava/lang/String;
    .end local v2           #postDialStr:Ljava/lang/String;
    .end local v4           #tempDialStr:Ljava/lang/String;
    :cond_61
    const-string v5, "checkAndProcessPlusCode:non-NANP not supported"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private static charToBCD(C)I
    .registers 4
    .parameter "c"

    .prologue
    .line 1050
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 1051
    add-int/lit8 v0, p0, -0x30

    .line 1059
    :goto_a
    return v0

    .line 1052
    :cond_b
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_12

    .line 1053
    const/16 v0, 0xa

    goto :goto_a

    .line 1054
    :cond_12
    const/16 v0, 0x23

    if-ne p0, v0, :cond_19

    .line 1055
    const/16 v0, 0xb

    goto :goto_a

    .line 1056
    :cond_19
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_20

    .line 1057
    const/16 v0, 0xc

    goto :goto_a

    .line 1058
    :cond_20
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_27

    .line 1059
    const/16 v0, 0xd

    goto :goto_a

    .line 1061
    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .registers 6
    .parameter "str"
    .parameter "forwardIndex"
    .parameter "backwardIndex"

    .prologue
    const/4 v1, 0x0

    .line 3277
    const/4 v0, 0x0

    .line 3278
    .local v0, trunk_prefix_was_read:Z
    :goto_2
    if-lt p2, p1, :cond_20

    .line 3279
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_15

    .line 3280
    if-eqz v0, :cond_11

    .line 3295
    :goto_10
    return v1

    .line 3286
    :cond_11
    const/4 v0, 0x1

    .line 3292
    :cond_12
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 3288
    :cond_15
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_10

    .line 3295
    :cond_20
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 480
    .local v0, useStrict:Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .parameter "a"
    .parameter "b"
    .parameter "useStrictComparation"

    .prologue
    .line 487
    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "a"
    .parameter "b"

    .prologue
    .line 508
    const/4 v7, 0x0

    .line 509
    .local v7, numNonDialableCharsInA:I
    const/4 v8, 0x0

    .line 511
    .local v8, numNonDialableCharsInB:I
    if-eqz p0, :cond_6

    if-nez p1, :cond_c

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v10, 0x1

    .line 595
    :goto_9
    return v10

    .line 511
    :cond_a
    const/4 v10, 0x0

    goto :goto_9

    .line 513
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1a

    .line 514
    :cond_18
    const/4 v10, 0x0

    goto :goto_9

    .line 517
    :cond_1a
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 518
    .local v4, ia:I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 519
    .local v5, ib:I
    const/4 v6, 0x0

    .line 521
    .local v6, matched:I
    :cond_23
    :goto_23
    if-ltz v4, :cond_52

    if-ltz v5, :cond_52

    .line 523
    const/4 v9, 0x0

    .line 525
    .local v9, skipCmp:Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 527
    .local v0, ca:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_37

    .line 528
    add-int/lit8 v4, v4, -0x1

    .line 529
    const/4 v9, 0x1

    .line 530
    add-int/lit8 v7, v7, 0x1

    .line 533
    :cond_37
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 535
    .local v1, cb:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_46

    .line 536
    add-int/lit8 v5, v5, -0x1

    .line 537
    const/4 v9, 0x1

    .line 538
    add-int/lit8 v8, v8, 0x1

    .line 541
    :cond_46
    if-nez v9, :cond_23

    .line 542
    if-eq v1, v0, :cond_67

    const/16 v10, 0x4e

    if-eq v0, v10, :cond_67

    const/16 v10, 0x4e

    if-eq v1, v10, :cond_67

    .line 549
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v9           #skipCmp:Z
    :cond_52
    const/4 v10, 0x7

    if-ge v6, v10, :cond_70

    .line 550
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v2, v10, v7

    .line 551
    .local v2, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v10, v8

    .line 556
    .local v3, effectiveBLen:I
    if-ne v2, v3, :cond_6e

    if-ne v2, v6, :cond_6e

    .line 557
    const/4 v10, 0x1

    goto :goto_9

    .line 545
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    .restart local v0       #ca:C
    .restart local v1       #cb:C
    .restart local v9       #skipCmp:Z
    :cond_67
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 560
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v9           #skipCmp:Z
    .restart local v2       #effectiveALen:I
    .restart local v3       #effectiveBLen:I
    :cond_6e
    const/4 v10, 0x0

    goto :goto_9

    .line 564
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    :cond_70
    const/4 v10, 0x7

    if-lt v6, v10, :cond_79

    if-ltz v4, :cond_77

    if-gez v5, :cond_79

    .line 565
    :cond_77
    const/4 v10, 0x1

    goto :goto_9

    .line 577
    :cond_79
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8c

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8c

    .line 580
    const/4 v10, 0x1

    goto/16 :goto_9

    .line 583
    :cond_8c
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9f

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 586
    const/4 v10, 0x1

    goto/16 :goto_9

    .line 589
    :cond_9f
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 592
    const/4 v10, 0x1

    goto/16 :goto_9

    .line 595
    :cond_b2
    const/4 v10, 0x0

    goto/16 :goto_9
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 603
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 23
    .parameter "a"
    .parameter "b"
    .parameter "acceptInvalidCCCPrefix"

    .prologue
    .line 611
    if-eqz p0, :cond_4

    if-nez p1, :cond_10

    .line 612
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_d

    const/16 v18, 0x1

    .line 749
    :goto_c
    return v18

    .line 612
    :cond_d
    const/16 v18, 0x0

    goto :goto_c

    .line 613
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1f

    .line 614
    const/16 v18, 0x0

    goto :goto_c

    .line 617
    :cond_1f
    const/4 v10, 0x0

    .line 618
    .local v10, forwardIndexA:I
    const/4 v11, 0x0

    .line 620
    .local v11, forwardIndexB:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 622
    .local v6, cccA:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 624
    .local v7, cccB:Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 625
    .local v5, bothHasCountryCallingCode:Z
    const/4 v13, 0x1

    .line 626
    .local v13, okToIgnorePrefix:Z
    const/16 v16, 0x0

    .line 627
    .local v16, trunkPrefixIsOmittedA:Z
    const/16 v17, 0x0

    .line 628
    .local v17, trunkPrefixIsOmittedB:Z
    if-eqz v6, :cond_84

    if-eqz v7, :cond_84

    .line 629
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_48

    .line 631
    const/16 v18, 0x0

    goto :goto_c

    .line 635
    :cond_48
    const/4 v13, 0x0

    .line 636
    const/4 v5, 0x1

    .line 637
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 638
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 664
    :cond_4e
    :goto_4e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 665
    .local v3, backwardIndexA:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 666
    .local v4, backwardIndexB:I
    :cond_5a
    :goto_5a
    if-lt v3, v10, :cond_b8

    if-lt v4, v11, :cond_b8

    .line 667
    const/4 v14, 0x0

    .line 668
    .local v14, skip_compare:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 669
    .local v8, chA:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 670
    .local v9, chB:C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_74

    .line 671
    add-int/lit8 v3, v3, -0x1

    .line 672
    const/4 v14, 0x1

    .line 674
    :cond_74
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7d

    .line 675
    add-int/lit8 v4, v4, -0x1

    .line 676
    const/4 v14, 0x1

    .line 679
    :cond_7d
    if-nez v14, :cond_5a

    .line 680
    if-eq v8, v9, :cond_b3

    .line 681
    const/16 v18, 0x0

    goto :goto_c

    .line 639
    .end local v3           #backwardIndexA:I
    .end local v4           #backwardIndexB:I
    .end local v8           #chA:C
    .end local v9           #chB:C
    .end local v14           #skip_compare:Z
    :cond_84
    if-nez v6, :cond_8a

    if-nez v7, :cond_8a

    .line 642
    const/4 v13, 0x0

    goto :goto_4e

    .line 644
    :cond_8a
    if-eqz v6, :cond_93

    .line 645
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 653
    :cond_8e
    :goto_8e
    if-eqz v7, :cond_a3

    .line 654
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_4e

    .line 647
    :cond_93
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 648
    .local v15, tmp:I
    if-ltz v15, :cond_8e

    .line 649
    move v10, v15

    .line 650
    const/16 v16, 0x1

    goto :goto_8e

    .line 656
    .end local v15           #tmp:I
    :cond_a3
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 657
    .restart local v15       #tmp:I
    if-ltz v15, :cond_4e

    .line 658
    move v11, v15

    .line 659
    const/16 v17, 0x1

    goto :goto_4e

    .line 683
    .end local v15           #tmp:I
    .restart local v3       #backwardIndexA:I
    .restart local v4       #backwardIndexB:I
    .restart local v8       #chA:C
    .restart local v9       #chB:C
    .restart local v14       #skip_compare:Z
    :cond_b3
    add-int/lit8 v3, v3, -0x1

    .line 684
    add-int/lit8 v4, v4, -0x1

    goto :goto_5a

    .line 688
    .end local v8           #chA:C
    .end local v9           #chB:C
    .end local v14           #skip_compare:Z
    :cond_b8
    if-eqz v13, :cond_fa

    .line 689
    if-eqz v16, :cond_be

    if-le v10, v3, :cond_c6

    :cond_be
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_da

    .line 691
    :cond_c6
    if-eqz p2, :cond_d6

    .line 701
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_c

    .line 703
    :cond_d6
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 706
    :cond_da
    if-eqz v17, :cond_de

    if-le v11, v4, :cond_e6

    :cond_de
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_147

    .line 708
    :cond_e6
    if-eqz p2, :cond_f6

    .line 709
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_c

    .line 711
    :cond_f6
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 724
    :cond_fa
    if-nez v5, :cond_11d

    const/4 v12, 0x1

    .line 725
    .local v12, maybeNamp:Z
    :goto_fd
    if-lt v3, v10, :cond_123

    .line 726
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 727
    .restart local v8       #chA:C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_11a

    .line 728
    if-eqz v12, :cond_11f

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11f

    .line 729
    const/4 v12, 0x0

    .line 734
    :cond_11a
    add-int/lit8 v3, v3, -0x1

    .line 735
    goto :goto_fd

    .line 724
    .end local v8           #chA:C
    .end local v12           #maybeNamp:Z
    :cond_11d
    const/4 v12, 0x0

    goto :goto_fd

    .line 731
    .restart local v8       #chA:C
    .restart local v12       #maybeNamp:Z
    :cond_11f
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 736
    .end local v8           #chA:C
    :cond_123
    :goto_123
    if-lt v4, v11, :cond_147

    .line 737
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 738
    .restart local v9       #chB:C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_140

    .line 739
    if-eqz v12, :cond_143

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_143

    .line 740
    const/4 v12, 0x0

    .line 745
    :cond_140
    add-int/lit8 v4, v4, -0x1

    .line 746
    goto :goto_123

    .line 742
    :cond_143
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 749
    .end local v9           #chB:C
    .end local v12           #maybeNamp:Z
    :cond_147
    const/16 v18, 0x1

    goto/16 :goto_c
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "input"

    .prologue
    .line 2607
    if-nez p0, :cond_3

    .line 2623
    .end local p0
    :cond_2
    :goto_2
    return-object p0

    .line 2610
    .restart local p0
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2611
    .local v2, len:I
    if-eqz v2, :cond_2

    .line 2615
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2617
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_1e

    .line 2618
    aget-char v0, v3, v1

    .line 2620
    .local v0, c:C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 2617
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2623
    .end local v0           #c:C
    :cond_1e
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_2
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 353
    if-nez p0, :cond_4

    .line 354
    const/4 v4, 0x0

    .line 369
    :goto_3
    return-object v4

    .line 356
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 357
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_2b

    .line 360
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 362
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 363
    const/16 v0, 0x2c

    .line 367
    :cond_1c
    :goto_1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 364
    :cond_22
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 365
    const/16 v0, 0x3b

    goto :goto_1c

    .line 369
    .end local v0           #c:C
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "phoneNumber"

    .prologue
    const/16 v7, 0x2b

    .line 256
    if-nez p0, :cond_6

    .line 257
    const/4 v6, 0x0

    .line 279
    :goto_5
    return-object v6

    .line 260
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 261
    .local v3, len:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 264
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    if-ge v2, v3, :cond_2e

    .line 265
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 266
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_28

    if-ne v0, v7, :cond_21

    if-nez v1, :cond_28

    .line 267
    :cond_21
    const/4 v1, 0x1

    .line 268
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 269
    :cond_28
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 274
    .end local v0           #c:C
    :cond_2e
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->addPlusChar(Ljava/lang/String;)I

    move-result v4

    .line 275
    .local v4, pos:I
    if-ltz v4, :cond_3d

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-le v6, v4, :cond_3d

    .line 276
    invoke-virtual {v5, v4, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 279
    :cond_3d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 292
    if-nez p0, :cond_4

    .line 293
    const/4 v5, 0x0

    .line 315
    :goto_3
    return-object v5

    .line 296
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 297
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 298
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 300
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_2f

    .line 301
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 302
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1f

    .line 303
    if-eqz v1, :cond_1e

    .line 300
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 306
    :cond_1e
    const/4 v1, 0x1

    .line 308
    :cond_1f
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 309
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 310
    :cond_29
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 315
    .end local v0           #c:C
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "phoneNumber"

    .prologue
    .line 444
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 460
    :goto_3
    return-object v5

    .line 447
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v2, ret:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 451
    .local v4, trimIndex:I
    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 452
    .local v3, s:I
    :goto_13
    if-ge v1, v3, :cond_25

    .line 454
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 455
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 456
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 460
    .end local v0           #c:C
    :cond_25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .registers 4
    .parameter "postDialStr"

    .prologue
    .line 2958
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 2959
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2960
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2964
    .end local v0           #c:C
    .end local v1           #index:I
    :goto_11
    return v1

    .line 2958
    .restart local v0       #c:C
    .restart local v1       #index:I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2964
    .end local v0           #c:C
    :cond_15
    const/4 v1, -0x1

    goto :goto_11
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .registers 1
    .parameter "text"

    .prologue
    .line 1801
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1802
    return-void
.end method

.method public static formatKRnpNumber(Landroid/text/Editable;)V
    .registers 13
    .parameter "text"

    .prologue
    .line 1418
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1424
    .local v3, length:I
    const/16 v9, 0xe

    if-le v3, v9, :cond_9

    .line 1646
    :cond_8
    :goto_8
    return-void

    .line 1427
    :cond_9
    const/4 v9, 0x2

    if-lt v3, v9, :cond_8

    .line 1432
    const/4 v8, 0x5

    .line 1433
    .local v8, state:I
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1435
    .local v0, Digits:Ljava/lang/String;
    const/4 v9, 0x6

    if-ge v3, v9, :cond_34

    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 1436
    const/4 v5, 0x0

    .line 1437
    .local v5, p:I
    :goto_1d
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 1438
    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_31

    .line 1439
    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v5, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1d

    .line 1441
    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1447
    .end local v5           #p:I
    :cond_34
    const/4 v9, 0x0

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_79

    .line 1448
    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x32

    if-ne v9, v10, :cond_61

    .line 1449
    const/4 v8, 0x6

    .line 1489
    :goto_47
    const/4 v9, 0x0

    invoke-interface {p0, v9, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1491
    .local v7, saved:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 1492
    .restart local v5       #p:I
    :goto_4d
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v5, v9, :cond_fb

    .line 1493
    invoke-interface {p0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_f7

    .line 1494
    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v5, v9}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_4d

    .line 1451
    .end local v5           #p:I
    .end local v7           #saved:Ljava/lang/CharSequence;
    :cond_61
    const/4 v9, 0x3

    if-lt v3, v9, :cond_8

    .line 1452
    const-string v9, "0505"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_74

    const-string v9, "050-5"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 1453
    :cond_74
    const/16 v8, 0xe

    goto :goto_47

    .line 1455
    :cond_77
    const/4 v8, 0x7

    goto :goto_47

    .line 1457
    :cond_79
    const/4 v9, 0x0

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2a

    if-ne v9, v10, :cond_b1

    .line 1458
    const/4 v9, 0x4

    if-lt v3, v9, :cond_8

    .line 1459
    const-string v9, "*23#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9d

    const-string v9, "*22#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9d

    const-string v9, "*31#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 1460
    :cond_9d
    const/4 v9, 0x5

    if-gt v3, v9, :cond_8

    .line 1461
    const/16 v8, 0xa

    goto :goto_47

    .line 1462
    :cond_a3
    const-string v9, "*230#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1463
    const/4 v9, 0x6

    if-gt v3, v9, :cond_8

    .line 1464
    const/16 v8, 0xb

    goto :goto_47

    .line 1469
    :cond_b1
    const/4 v9, 0x0

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_d9

    .line 1470
    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x39

    if-ne v9, v10, :cond_ca

    .line 1471
    const/4 v9, 0x3

    if-gt v3, v9, :cond_8

    .line 1472
    const/16 v8, 0x8

    goto/16 :goto_47

    .line 1473
    :cond_ca
    const-string v9, "#31#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1474
    const/4 v9, 0x5

    if-gt v3, v9, :cond_8

    .line 1475
    const/16 v8, 0xa

    goto/16 :goto_47

    .line 1480
    :cond_d9
    const/4 v9, 0x0

    invoke-interface {p0, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_ed

    .line 1481
    const/4 v9, 0x6

    if-lt v3, v9, :cond_8

    const/16 v9, 0x9

    if-gt v3, v9, :cond_8

    .line 1482
    const/16 v8, 0x9

    goto/16 :goto_47

    .line 1484
    :cond_ed
    const/4 v9, 0x5

    if-lt v3, v9, :cond_8

    const/16 v9, 0x9

    if-gt v3, v9, :cond_8

    .line 1485
    const/4 v8, 0x5

    goto/16 :goto_47

    .line 1496
    .restart local v5       #p:I
    .restart local v7       #saved:Ljava/lang/CharSequence;
    :cond_f7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4d

    .line 1500
    :cond_fb
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1502
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "3003003000"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_113

    .line 1503
    const/4 v9, 0x0

    const-string v10, "300-300-3000"

    invoke-interface {p0, v9, v3, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_8

    .line 1510
    :cond_113
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 1511
    .local v1, dashPositions:[I
    const/4 v4, 0x0

    .line 1518
    .local v4, numDashes:I
    packed-switch v8, :pswitch_data_21a

    .line 1627
    :pswitch_11a
    const/4 v9, 0x0

    invoke-interface {p0, v9, v3, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_8

    .line 1520
    :pswitch_120
    const/4 v9, 0x3

    if-gt v3, v9, :cond_137

    .line 1521
    const/4 v4, 0x0

    .line 1636
    :cond_124
    :goto_124
    if-eqz v4, :cond_8

    .line 1637
    const/4 v2, 0x0

    .local v2, i:I
    :goto_127
    if-ge v2, v4, :cond_8

    .line 1638
    aget v6, v1, v2

    .line 1639
    .local v6, pos:I
    add-int v9, v6, v2

    add-int v10, v6, v2

    const-string v11, "-"

    invoke-interface {p0, v9, v10, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1637
    add-int/lit8 v2, v2, 0x1

    goto :goto_127

    .line 1523
    .end local v2           #i:I
    .end local v6           #pos:I
    :cond_137
    const/4 v9, 0x7

    if-gt v3, v9, :cond_140

    .line 1524
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v10, v1, v9

    .line 1525
    const/4 v4, 0x1

    .line 1526
    goto :goto_124

    .line 1527
    :cond_140
    const/4 v9, 0x7

    if-le v3, v9, :cond_152

    const/16 v9, 0xa

    if-gt v3, v9, :cond_152

    .line 1528
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v10, v1, v9

    .line 1529
    const/4 v9, 0x1

    add-int/lit8 v10, v3, -0x4

    aput v10, v1, v9

    .line 1530
    const/4 v4, 0x2

    .line 1531
    goto :goto_124

    .line 1532
    :cond_152
    const/16 v9, 0xa

    if-le v3, v9, :cond_124

    .line 1533
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v10, v1, v9

    .line 1534
    const/4 v9, 0x1

    const/4 v10, 0x7

    aput v10, v1, v9

    .line 1535
    const/4 v4, 0x2

    goto :goto_124

    .line 1539
    :pswitch_160
    const/4 v9, 0x4

    if-gt v3, v9, :cond_165

    .line 1540
    const/4 v4, 0x0

    .line 1541
    goto :goto_124

    .line 1542
    :cond_165
    const/16 v9, 0x8

    if-gt v3, v9, :cond_16f

    .line 1543
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1544
    const/4 v4, 0x1

    .line 1545
    goto :goto_124

    .line 1546
    :cond_16f
    const/16 v9, 0x8

    if-le v3, v9, :cond_182

    const/16 v9, 0xb

    if-gt v3, v9, :cond_182

    .line 1547
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1548
    const/4 v9, 0x1

    add-int/lit8 v10, v3, -0x4

    aput v10, v1, v9

    .line 1549
    const/4 v4, 0x2

    .line 1550
    goto :goto_124

    .line 1551
    :cond_182
    const/16 v9, 0xb

    if-le v3, v9, :cond_124

    .line 1552
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1553
    const/4 v9, 0x1

    const/16 v10, 0x8

    aput v10, v1, v9

    .line 1554
    const/4 v4, 0x2

    goto :goto_124

    .line 1558
    :pswitch_191
    const/4 v9, 0x2

    if-gt v3, v9, :cond_196

    .line 1559
    const/4 v4, 0x0

    .line 1560
    goto :goto_124

    .line 1561
    :cond_196
    const/4 v9, 0x6

    if-gt v3, v9, :cond_19f

    .line 1562
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v1, v9

    .line 1563
    const/4 v4, 0x1

    .line 1564
    goto :goto_124

    .line 1565
    :cond_19f
    const/4 v9, 0x6

    if-le v3, v9, :cond_1b2

    const/16 v9, 0x9

    if-gt v3, v9, :cond_1b2

    .line 1566
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v1, v9

    .line 1567
    const/4 v9, 0x1

    add-int/lit8 v10, v3, -0x4

    aput v10, v1, v9

    .line 1568
    const/4 v4, 0x2

    .line 1569
    goto/16 :goto_124

    .line 1570
    :cond_1b2
    const/16 v9, 0x9

    if-le v3, v9, :cond_124

    .line 1571
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v1, v9

    .line 1572
    const/4 v9, 0x1

    const/4 v10, 0x6

    aput v10, v1, v9

    .line 1573
    const/4 v4, 0x2

    goto/16 :goto_124

    .line 1577
    :pswitch_1c1
    const/4 v9, 0x2

    if-gt v3, v9, :cond_1c7

    .line 1578
    const/4 v4, 0x0

    goto/16 :goto_124

    .line 1580
    :cond_1c7
    const/4 v9, 0x0

    const/4 v10, 0x2

    aput v10, v1, v9

    .line 1581
    const/4 v4, 0x1

    .line 1583
    goto/16 :goto_124

    .line 1585
    :pswitch_1ce
    const/4 v9, 0x4

    if-gt v3, v9, :cond_1d4

    .line 1586
    const/4 v4, 0x0

    goto/16 :goto_124

    .line 1588
    :cond_1d4
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1589
    const/4 v4, 0x1

    .line 1591
    goto/16 :goto_124

    .line 1593
    :pswitch_1db
    const/4 v9, 0x5

    if-gt v3, v9, :cond_1e1

    .line 1594
    const/4 v4, 0x0

    goto/16 :goto_124

    .line 1596
    :cond_1e1
    const/4 v9, 0x0

    const/4 v10, 0x5

    aput v10, v1, v9

    .line 1597
    const/4 v4, 0x1

    .line 1599
    goto/16 :goto_124

    .line 1601
    :pswitch_1e8
    const/16 v9, 0x8

    if-gt v3, v9, :cond_1f4

    .line 1602
    const/4 v9, 0x0

    add-int/lit8 v10, v3, -0x4

    aput v10, v1, v9

    .line 1603
    const/4 v4, 0x1

    .line 1604
    goto/16 :goto_124

    .line 1605
    :cond_1f4
    const/16 v9, 0x8

    if-le v3, v9, :cond_124

    .line 1606
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1607
    const/4 v4, 0x1

    goto/16 :goto_124

    .line 1611
    :pswitch_1ff
    const/4 v9, 0x3

    if-gt v3, v9, :cond_205

    .line 1612
    const/4 v4, 0x0

    .line 1613
    goto/16 :goto_124

    .line 1615
    :cond_205
    const/4 v9, 0x7

    if-gt v3, v9, :cond_20f

    .line 1616
    const/4 v9, 0x0

    const/4 v10, 0x3

    aput v10, v1, v9

    .line 1617
    const/4 v4, 0x1

    .line 1618
    goto/16 :goto_124

    .line 1619
    :cond_20f
    const/4 v9, 0x7

    if-le v3, v9, :cond_124

    .line 1620
    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v1, v9

    .line 1621
    const/4 v4, 0x1

    goto/16 :goto_124

    .line 1518
    nop

    :pswitch_data_21a
    .packed-switch 0x5
        :pswitch_1ff
        :pswitch_191
        :pswitch_120
        :pswitch_1c1
        :pswitch_1e8
        :pswitch_1ce
        :pswitch_1db
        :pswitch_11a
        :pswitch_11a
        :pswitch_160
    .end packed-switch
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .registers 15
    .parameter "text"

    .prologue
    .line 1674
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1675
    .local v4, length:I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_d

    .line 1783
    :cond_c
    :goto_c
    return-void

    .line 1678
    :cond_d
    const/4 v11, 0x5

    if-le v4, v11, :cond_c

    .line 1683
    const/4 v11, 0x0

    invoke-interface {p0, v11, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1686
    .local v9, saved:Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1687
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1692
    const/4 v11, 0x3

    new-array v1, v11, [I

    .line 1693
    .local v1, dashPositions:[I
    const/4 v5, 0x0

    .line 1695
    .local v5, numDashes:I
    const/4 v10, 0x1

    .line 1696
    .local v10, state:I
    const/4 v7, 0x0

    .line 1697
    .local v7, numDigits:I
    const/4 v2, 0x0

    .local v2, i:I
    move v6, v5

    .end local v5           #numDashes:I
    .local v6, numDashes:I
    :goto_24
    if-ge v2, v4, :cond_72

    .line 1698
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1699
    .local v0, c:C
    packed-switch v0, :pswitch_data_a4

    .line 1757
    :cond_2d
    :pswitch_2d
    const/4 v11, 0x0

    invoke-interface {p0, v11, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_c

    .line 1701
    :pswitch_32
    if-eqz v7, :cond_37

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3d

    .line 1702
    :cond_37
    const/4 v10, 0x3

    move v5, v6

    .line 1697
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :goto_39
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    goto :goto_24

    .line 1718
    :cond_3d
    :pswitch_3d
    const/4 v11, 0x2

    if-eq v10, v11, :cond_46

    const/4 v11, 0x5

    if-eq v10, v11, :cond_46

    const/4 v11, 0x6

    if-ne v10, v11, :cond_4b

    .line 1721
    :cond_46
    const/4 v11, 0x0

    invoke-interface {p0, v11, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_c

    .line 1723
    :cond_4b
    const/4 v11, 0x3

    if-ne v10, v11, :cond_56

    .line 1725
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    aput v2, v1, v6

    .line 1730
    :goto_52
    const/4 v10, 0x1

    .line 1731
    add-int/lit8 v7, v7, 0x1

    .line 1732
    goto :goto_39

    .line 1726
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_56
    const/4 v11, 0x4

    if-eq v10, v11, :cond_a2

    const/4 v11, 0x3

    if-eq v7, v11, :cond_5f

    const/4 v11, 0x6

    if-ne v7, v11, :cond_a2

    .line 1728
    :cond_5f
    add-int/lit8 v5, v6, 0x1

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    aput v2, v1, v6

    goto :goto_52

    .line 1735
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_64
    const/4 v10, 0x4

    move v5, v6

    .line 1736
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_39

    .line 1741
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_67
    const/4 v10, 0x5

    move v5, v6

    .line 1742
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_39

    .line 1744
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_6a
    const/4 v10, 0x6

    move v5, v6

    .line 1745
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_39

    .line 1749
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :pswitch_6d
    if-nez v2, :cond_2d

    .line 1751
    const/4 v10, 0x2

    move v5, v6

    .line 1752
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_39

    .line 1762
    .end local v0           #c:C
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_72
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a0

    .line 1764
    add-int/lit8 v5, v6, -0x1

    .line 1768
    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    :goto_77
    const/4 v2, 0x0

    :goto_78
    if-ge v2, v5, :cond_88

    .line 1769
    aget v8, v1, v2

    .line 1770
    .local v8, pos:I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1768
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 1774
    .end local v8           #pos:I
    :cond_88
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1775
    .local v3, len:I
    :goto_8c
    if-lez v3, :cond_c

    .line 1776
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_c

    .line 1777
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1778
    add-int/lit8 v3, v3, -0x1

    goto :goto_8c

    .end local v3           #len:I
    .end local v5           #numDashes:I
    .restart local v6       #numDashes:I
    :cond_a0
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_77

    .end local v5           #numDashes:I
    .restart local v0       #c:C
    .restart local v6       #numDashes:I
    :cond_a2
    move v5, v6

    .end local v6           #numDashes:I
    .restart local v5       #numDashes:I
    goto :goto_52

    .line 1699
    :pswitch_data_a4
    .packed-switch 0x2b
        :pswitch_6d
        :pswitch_67
        :pswitch_64
        :pswitch_2d
        :pswitch_2d
        :pswitch_3d
        :pswitch_32
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_2d
        :pswitch_6a
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "source"

    .prologue
    .line 1283
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1284
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1285
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "source"
    .parameter "defaultFormattingType"

    .prologue
    .line 1300
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1301
    .local v0, text:Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1302
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"
    .parameter "defaultCountryIso"

    .prologue
    .line 1868
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_10
    move-object v1, p0

    .line 1879
    :goto_11
    return-object v1

    .line 1872
    :cond_12
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1873
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1875
    .local v1, result:Ljava/lang/String;
    :try_start_17
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1876
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_17 .. :try_end_1e} :catch_20

    move-result-object v1

    goto :goto_11

    .line 1877
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_20
    move-exception v3

    goto :goto_11
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "phoneNumber"
    .parameter "phoneNumberE164"
    .parameter "defaultCountryIso"

    .prologue
    .line 1903
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1904
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 1905
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_12

    .line 1923
    .end local p0
    :goto_11
    return-object p0

    .line 1904
    .restart local p0
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1909
    :cond_15
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 1911
    .local v5, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_3a

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_3a

    .line 1914
    :try_start_2b
    invoke-virtual {v5, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1915
    .local v2, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1916
    .local v3, regionCode:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_36
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2b .. :try_end_36} :catch_44

    move-result v6

    if-nez v6, :cond_3a

    .line 1917
    move-object p2, v3

    .line 1922
    .end local v2           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3           #regionCode:Ljava/lang/String;
    :cond_3a
    :goto_3a
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1923
    .local v4, result:Ljava/lang/String;
    if-eqz v4, :cond_42

    .end local v4           #result:Ljava/lang/String;
    :goto_40
    move-object p0, v4

    goto :goto_11

    .restart local v4       #result:Ljava/lang/String;
    :cond_42
    move-object v4, p0

    goto :goto_40

    .line 1919
    .end local v4           #result:Ljava/lang/String;
    :catch_44
    move-exception v6

    goto :goto_3a
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .registers 8
    .parameter "text"
    .parameter "defaultFormattingType"

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1327
    move v0, p1

    .line 1329
    .local v0, formatType:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_1b

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1b

    .line 1330
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1f

    .line 1331
    const/4 v0, 0x1

    .line 1344
    :cond_1b
    :goto_1b
    sparse-switch v0, :sswitch_data_44

    .line 1360
    :goto_1e
    :sswitch_1e
    return-void

    .line 1332
    :cond_1f
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_36

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_36

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_36

    .line 1334
    const/4 v0, 0x2

    goto :goto_1b

    .line 1340
    :cond_36
    const/4 v0, 0x0

    goto :goto_1b

    .line 1346
    :sswitch_38
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1349
    :sswitch_3c
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1357
    :sswitch_40
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1e

    .line 1344
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_40
        0x1 -> :sswitch_38
        0x2 -> :sswitch_3c
        0x52 -> :sswitch_1e
    .end sparse-switch
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"
    .parameter "defaultCountryIso"

    .prologue
    .line 1839
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1840
    .local v2, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1842
    .local v1, result:Ljava/lang/String;
    :try_start_5
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1843
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1844
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_14
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_5 .. :try_end_14} :catch_16

    move-result-object v1

    .line 1848
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_15
    :goto_15
    return-object v1

    .line 1846
    :catch_16
    move-exception v3

    goto :goto_15
.end method

.method private static getDefaultIdp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2808
    const/4 v0, 0x0

    .line 2809
    .local v0, ps:Ljava/lang/String;
    const-string/jumbo v1, "ro.cdma.idpstring"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2810
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2811
    const-string v0, "011"

    .line 2813
    :cond_f
    return-object v0
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .parameter "number"

    .prologue
    .line 2118
    const/4 v3, 0x0

    .line 2119
    .local v3, clir:I
    const/4 v10, 0x0

    .line 2123
    .local v10, isRoaming:I
    if-nez p0, :cond_7

    const/16 v17, 0x0

    .line 2205
    :goto_6
    return-object v17

    .line 2126
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_6

    .line 2127
    :cond_10
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_25

    const/16 v17, 0x0

    goto :goto_6

    .line 2133
    :cond_25
    const-string v17, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2136
    .local v16, words:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d1

    .line 2137
    const/16 v17, 0x0

    aget-object v4, v16, v17

    .line 2139
    .local v4, dialNumber:Ljava/lang/String;
    const/16 v17, 0x1

    :try_start_42
    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2140
    const/16 v17, 0x2

    aget-object v17, v16, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_4f} :catch_171

    move-result v10

    .line 2149
    :goto_50
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2154
    const-string v14, ""

    .line 2156
    .local v14, numbers:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2157
    .local v8, i:I
    :goto_57
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "ril.ecclist"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2158
    .local v11, key:Ljava/lang/String;
    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2160
    .local v13, n:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_d7

    .line 2172
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_155

    .line 2175
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v12, v2

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_89
    if-ge v9, v12, :cond_151

    aget-object v7, v2, v9

    .line 2176
    .local v7, emergencyNum:Ljava/lang/String;
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2177
    .local v15, splitStr:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v6, v15, v17

    .line 2178
    .local v6, eccNum:Ljava/lang/String;
    array-length v0, v15

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_10e

    const/16 v17, 0x1

    aget-object v5, v15, v17

    .line 2179
    .local v5, eccCat:Ljava/lang/String;
    :goto_a8
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14d

    .line 2182
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_149

    if-nez v10, :cond_149

    .line 2183
    const-string v17, "110"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_115

    .line 2184
    if-nez v3, :cond_111

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_6

    .line 2145
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #dialNumber:Ljava/lang/String;
    .end local v5           #eccCat:Ljava/lang/String;
    .end local v6           #eccNum:Ljava/lang/String;
    .end local v7           #emergencyNum:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #i$:I
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v13           #n:Ljava/lang/String;
    .end local v14           #numbers:Ljava/lang/String;
    .end local v15           #splitStr:[Ljava/lang/String;
    :cond_d1
    const/16 v17, 0x0

    aget-object v4, v16, v17

    .restart local v4       #dialNumber:Ljava/lang/String;
    goto/16 :goto_50

    .line 2163
    .restart local v8       #i:I
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #n:Ljava/lang/String;
    .restart local v14       #numbers:Ljava/lang/String;
    :cond_d7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2165
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2156
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_57

    .line 2178
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v6       #eccNum:Ljava/lang/String;
    .restart local v7       #emergencyNum:Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v12       #len$:I
    .restart local v15       #splitStr:[Ljava/lang/String;
    :cond_10e
    const-string v5, ""

    goto :goto_a8

    .line 2184
    .restart local v5       #eccCat:Ljava/lang/String;
    :cond_111
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 2185
    :cond_115
    const-string v17, "118"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12d

    .line 2186
    if-nez v3, :cond_129

    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_6

    :cond_129
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 2187
    :cond_12d
    const-string v17, "119"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_145

    .line 2188
    if-nez v3, :cond_141

    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_6

    :cond_141
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_145
    move-object/from16 v17, v5

    .line 2190
    goto/16 :goto_6

    :cond_149
    move-object/from16 v17, v5

    .line 2194
    goto/16 :goto_6

    .line 2175
    :cond_14d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_89

    .line 2198
    .end local v5           #eccCat:Ljava/lang/String;
    .end local v6           #eccNum:Ljava/lang/String;
    .end local v7           #emergencyNum:Ljava/lang/String;
    .end local v15           #splitStr:[Ljava/lang/String;
    :cond_151
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 2202
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    :cond_155
    const-string v17, "112"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_169

    const-string v17, "911"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16d

    .line 2203
    :cond_169
    const-string v17, ""

    goto/16 :goto_6

    .line 2205
    :cond_16d
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 2141
    .end local v8           #i:I
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #n:Ljava/lang/String;
    .end local v14           #numbers:Ljava/lang/String;
    :catch_171
    move-exception v17

    goto/16 :goto_50
.end method

.method public static getEmergencyServiceCategoryforkor(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "number"

    .prologue
    const/4 v8, 0x0

    .line 2213
    const-string v5, "112,911,999,000,08,110,118,119,122,113,125,127,111"

    .line 2216
    .local v5, korDefaultECCList:Ljava/lang/String;
    if-nez p0, :cond_6

    .line 2394
    :cond_5
    :goto_5
    return-object v8

    .line 2220
    :cond_6
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2228
    .local v2, dialNumber:Ljava/lang/String;
    const-string v7, ""

    .line 2230
    .local v7, numbers:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2231
    .local v3, i:I
    :goto_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ril.ecclist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2232
    .local v4, key:Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2234
    .local v6, n:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_c8

    .line 2249
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2252
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6c

    .line 2255
    const-string/jumbo v9, "ril.currentplmn"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2256
    .local v1, currPlmn:Ljava/lang/String;
    const-string v9, "domestic"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    const-string/jumbo v9, "unknown"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6c

    .line 2377
    .end local v1           #currPlmn:Ljava/lang/String;
    :cond_6c
    const-string/jumbo v9, "ril.currentplmn"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2380
    .local v0, currIso:Ljava/lang/String;
    const-string v9, "domestic"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8c

    const-string/jumbo v9, "unknown"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 2381
    :cond_8c
    const-string v9, "112"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c4

    const-string v9, "119"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c4

    const-string v9, "122"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c4

    const-string v9, "113"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c4

    const-string v9, "125"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c4

    const-string v9, "127"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c4

    const-string v9, "111"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2384
    :cond_c4
    const-string v8, ""

    goto/16 :goto_5

    .line 2237
    .end local v0           #currIso:Ljava/lang/String;
    :cond_c8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 2239
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2230
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 2389
    .restart local v0       #currIso:Ljava/lang/String;
    :cond_f7
    const-string v9, "000"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13f

    const-string v9, "08"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13f

    const-string v9, "110"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13f

    const-string v9, "999"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13f

    const-string v9, "118"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13f

    const-string v9, "112"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13f

    const-string v9, "911"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13f

    const-string v9, "119"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13f

    const-string v9, "122"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2392
    :cond_13f
    const-string v8, ""

    goto/16 :goto_5
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .registers 3
    .parameter "locale"

    .prologue
    .line 1313
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .registers 4
    .parameter "country"

    .prologue
    .line 2826
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 2832
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_15

    .line 2833
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 2834
    const/4 v2, 0x1

    .line 2840
    :goto_11
    return v2

    .line 2832
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2837
    :cond_15
    const-string/jumbo v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_20

    .line 2838
    const/4 v2, 0x2

    goto :goto_11

    .line 2840
    :cond_20
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static getLTNContactsMatchLength(Landroid/content/Context;)I
    .registers 14
    .parameter "context"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x3

    .line 3301
    const/4 v3, 0x7

    .line 3302
    .local v3, length:I
    const/4 v5, 0x0

    .local v5, mcc:I
    const/4 v6, 0x0

    .line 3303
    .local v6, mnc:I
    const/4 v1, 0x0

    .line 3304
    .local v1, SimOperator:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3306
    .local v4, matchLength:Ljava/lang/String;
    const-string v8, "clidigits.preferences_name"

    invoke-virtual {p0, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 3307
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v8, "Clidigits"

    const/4 v9, 0x7

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3309
    .local v0, Clidigits:I
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3311
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-eq v8, v11, :cond_2d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-nez v8, :cond_2e

    .line 3405
    .end local v0           #Clidigits:I
    :cond_2d
    :goto_2d
    return v0

    .line 3317
    .restart local v0       #Clidigits:I
    :cond_2e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 3321
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2d

    .line 3323
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3324
    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3333
    sparse-switch v5, :sswitch_data_88

    .line 3393
    const/4 v3, 0x7

    .line 3397
    :goto_53
    if-eq v0, v3, :cond_5d

    .line 3399
    const-string v8, "Clidigits"

    invoke-interface {v2, v8, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3400
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5d
    move v0, v3

    .line 3405
    goto :goto_2d

    .line 3345
    :sswitch_5f
    const/4 v3, 0x7

    .line 3346
    goto :goto_53

    .line 3358
    :sswitch_61
    const/16 v3, 0x8

    .line 3359
    goto :goto_53

    .line 3365
    :sswitch_64
    const/16 v3, 0xa

    .line 3366
    goto :goto_53

    .line 3370
    :sswitch_67
    if-ne v6, v11, :cond_6c

    .line 3371
    const/16 v3, 0x8

    goto :goto_53

    .line 3373
    :cond_6c
    const/4 v3, 0x7

    .line 3374
    goto :goto_53

    .line 3378
    :sswitch_6e
    if-eq v6, v11, :cond_75

    const/4 v8, 0x2

    if-eq v6, v8, :cond_75

    if-ne v6, v10, :cond_77

    .line 3379
    :cond_75
    const/4 v3, 0x7

    goto :goto_53

    .line 3381
    :cond_77
    const/16 v3, 0xa

    .line 3382
    goto :goto_53

    .line 3386
    :sswitch_7a
    const/16 v8, 0x32

    if-eq v6, v8, :cond_82

    if-eq v6, v12, :cond_82

    if-ne v6, v10, :cond_84

    .line 3387
    :cond_82
    const/4 v3, 0x7

    goto :goto_53

    .line 3389
    :cond_84
    const/16 v3, 0x8

    .line 3390
    goto :goto_53

    .line 3333
    nop

    :sswitch_data_88
    .sparse-switch
        0xd6 -> :sswitch_5f
        0x14a -> :sswitch_64
        0x14e -> :sswitch_7a
        0x152 -> :sswitch_5f
        0x16b -> :sswitch_5f
        0x170 -> :sswitch_61
        0x172 -> :sswitch_64
        0x176 -> :sswitch_5f
        0x2c0 -> :sswitch_61
        0x2c2 -> :sswitch_61
        0x2c4 -> :sswitch_5f
        0x2c6 -> :sswitch_61
        0x2c8 -> :sswitch_61
        0x2ca -> :sswitch_5f
        0x2cc -> :sswitch_5f
        0x2d2 -> :sswitch_5f
        0x2d4 -> :sswitch_61
        0x2da -> :sswitch_61
        0x2dc -> :sswitch_64
        0x2de -> :sswitch_6e
        0x2e4 -> :sswitch_61
        0x2e8 -> :sswitch_5f
        0x2ec -> :sswitch_67
    .end sparse-switch
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 198
    const/4 v8, 0x0

    .line 200
    .local v8, number:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, scheme:Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "sip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 204
    :cond_1c
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 241
    :cond_20
    :goto_20
    return-object v3

    .line 209
    :cond_21
    const-string/jumbo v0, "voicemail"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 210
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    .line 213
    :cond_33
    if-eqz p1, :cond_20

    .line 217
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 218
    .local v11, type:Ljava/lang/String;
    const/4 v9, 0x0

    .line 221
    .local v9, phoneColumn:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, authority:Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 223
    const-string/jumbo v9, "number"

    .line 228
    :cond_49
    :goto_49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 231
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_6c

    .line 233
    :try_start_5b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 234
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_79

    move-result-object v8

    .line 237
    :cond_69
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6c
    move-object v3, v8

    .line 241
    goto :goto_20

    .line 224
    .end local v7           #c:Landroid/database/Cursor;
    :cond_6e
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 225
    const-string v9, "data1"

    goto :goto_49

    .line 237
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_79
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 776
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, np:Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 780
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "number"

    .prologue
    .line 2914
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2915
    .local v0, delimiterIndex:I
    if-gez v0, :cond_e

    .line 2916
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2918
    :cond_e
    if-gez v0, :cond_32

    .line 2919
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2923
    :cond_32
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .registers 6
    .parameter "a"

    .prologue
    .line 398
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 400
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 401
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 403
    .local v3, wIndex:I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 405
    .local v2, trimIndex:I
    if-gez v2, :cond_19

    .line 406
    add-int/lit8 v4, v0, -0x1

    .line 408
    :goto_18
    return v4

    :cond_19
    add-int/lit8 v4, v2, -0x1

    goto :goto_18
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .registers 9
    .parameter "sb"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 956
    move v2, p2

    .local v2, i:I
    :goto_1
    add-int v3, p3, p2

    if-ge v2, v3, :cond_10

    .line 963
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 966
    .local v1, c:C
    if-nez v1, :cond_11

    .line 998
    .end local v1           #c:C
    :cond_10
    return-void

    .line 969
    .restart local v1       #c:C
    :cond_11
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 980
    .local v0, b:B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_25

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_10

    .line 988
    :cond_25
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 991
    if-eqz v1, :cond_10

    .line 995
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 956
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 789
    if-nez p0, :cond_4

    const/4 v5, 0x0

    .line 802
    :goto_3
    return-object v5

    .line 791
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 792
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 794
    .local v2, length:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    move v4, v2

    .line 795
    .local v4, s:I
    :goto_10
    if-ltz v1, :cond_20

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_20

    .line 797
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 799
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 795
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 802
    .end local v0           #c:C
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public static final is12Key(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 132
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_10

    const/16 v0, 0x23

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isCountryCallingCode(I)Z
    .registers 2
    .parameter "countryCallingCodeCandidate"

    .prologue
    .line 3132
    if-lez p0, :cond_e

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_e

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static final isDialable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 138
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_18

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x23

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_18

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1089
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1090
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1091
    const/4 v2, 0x0

    .line 1094
    :goto_12
    return v2

    .line 1089
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1094
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    .line 2085
    const/4 v0, 0x0

    .line 2090
    .local v0, cat:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2095
    if-nez v0, :cond_9

    .line 2096
    const/4 v1, 0x0

    .line 2098
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "number"
    .parameter "defaultCountryIso"

    .prologue
    .line 2411
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .parameter "number"
    .parameter "defaultCountryIso"
    .parameter "useExactMatch"

    .prologue
    const/4 v4, 0x0

    .line 2460
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 2462
    .local v1, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_5
    invoke-virtual {v1, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 2468
    .local v0, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2481
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_f
    :goto_f
    return v4

    .line 2470
    .restart local v0       #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_10
    const-string v2, "BR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_1b
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_5 .. :try_end_1b} :catch_21

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_f

    goto :goto_f

    .line 2479
    .end local v0           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_21
    move-exception v2

    goto :goto_f
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 1080
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1081
    const/4 v1, 0x0

    .line 1085
    :goto_7
    return v1

    .line 1084
    :cond_8
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1085
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method public static isISODigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 126
    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isLTNSpecialNumber(Ljava/lang/String;)Z
    .registers 6
    .parameter "strNumber"

    .prologue
    const/4 v3, 0x0

    .line 3411
    const/4 v0, 0x0

    .line 3413
    .local v0, bIsDigit:Z
    if-nez p0, :cond_5

    .line 3434
    :cond_4
    :goto_4
    return v3

    .line 3418
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_17

    .line 3419
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3420
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3421
    const/4 v0, 0x1

    .line 3428
    .end local v1           #c:C
    :cond_17
    if-nez v0, :cond_4

    .line 3434
    const/4 v3, 0x1

    goto :goto_4

    .line 3418
    .restart local v1       #c:C
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3
    .parameter "number"
    .parameter "context"

    .prologue
    .line 2502
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .registers 9
    .parameter "number"
    .parameter "context"
    .parameter "useExactMatch"

    .prologue
    .line 2554
    const-string v3, "country_detector"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2556
    .local v1, detector:Landroid/location/CountryDetector;
    if-eqz v1, :cond_17

    .line 2557
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2564
    .local v0, countryIso:Ljava/lang/String;
    :goto_12
    invoke-static {p0, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 2559
    .end local v0           #countryIso:Ljava/lang/String;
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2560
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2561
    .restart local v0       #countryIso:Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private static isNanp(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialStr"

    .prologue
    const/16 v4, 0xa

    .line 2848
    const/4 v2, 0x0

    .line 2849
    .local v2, retVal:Z
    if-eqz p0, :cond_34

    .line 2850
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_30

    .line 2851
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2853
    const/4 v2, 0x1

    .line 2854
    const/4 v1, 0x1

    .local v1, i:I
    :goto_23
    if-ge v1, v4, :cond_30

    .line 2855
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2856
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_31

    .line 2857
    const/4 v2, 0x0

    .line 2866
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_30
    :goto_30
    return v2

    .line 2854
    .restart local v0       #c:C
    .restart local v1       #i:I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 2864
    .end local v0           #c:C
    .end local v1           #i:I
    :cond_34
    const-string/jumbo v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public static final isNonSeparator(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 155
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_20

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_20

    const/16 v0, 0x23

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_20

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 1098
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, count:I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 1099
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1100
    const/4 v2, 0x0

    .line 1103
    :goto_12
    return v2

    .line 1098
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1103
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .registers 5
    .parameter "dialStr"

    .prologue
    .line 2873
    const/4 v1, 0x0

    .line 2874
    .local v1, retVal:Z
    if-eqz p0, :cond_19

    .line 2875
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2876
    .local v0, newDialStr:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_18

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2877
    const/4 v1, 0x1

    .line 2882
    .end local v0           #newDialStr:Ljava/lang/String;
    :cond_18
    :goto_18
    return v1

    .line 2880
    :cond_19
    const-string/jumbo v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private static isPause(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 175
    const/16 v0, 0x70

    if-eq p0, v0, :cond_8

    const/16 v0, 0x50

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "number"
    .parameter "defaultCountryIso"

    .prologue
    .line 2438
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3
    .parameter "number"
    .parameter "context"

    .prologue
    .line 2528
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 144
    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_14

    const/16 v0, 0x23

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static isSeparator(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 186
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x61

    if-gt v0, p0, :cond_e

    const/16 v0, 0x7a

    if-le p0, v0, :cond_18

    :cond_e
    const/16 v0, 0x41

    if-gt v0, p0, :cond_16

    const/16 v0, 0x5a

    if-le p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static final isStartsPostDial(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 169
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isToneWait(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 180
    const/16 v0, 0x77

    if-eq p0, v0, :cond_8

    const/16 v0, 0x57

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isTwoToNine(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2817
    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 2818
    const/4 v0, 0x1

    .line 2820
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .registers 2
    .parameter "number"

    .prologue
    .line 2898
    if-eqz p0, :cond_14

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .registers 5
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 2582
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_1b

    move-result-object v1

    .line 2589
    .local v1, vmNumber:Ljava/lang/String;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2593
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v2, 0x1

    .end local v1           #vmNumber:Ljava/lang/String;
    :cond_1a
    :goto_1a
    return v2

    .line 2583
    :catch_1b
    move-exception v0

    .line 2584
    .local v0, ex:Ljava/lang/SecurityException;
    goto :goto_1a
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1071
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, networkPortion:Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 387
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .registers 10
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3005
    const/4 v2, 0x0

    .line 3006
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_45

    .line 3007
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3009
    .local v0, c:C
    packed-switch v2, :pswitch_data_50

    .line 3028
    :pswitch_11
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 3034
    .end local v0           #c:C
    :cond_17
    :goto_17
    return v3

    .line 3011
    .restart local v0       #c:C
    :pswitch_18
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_20

    const/4 v2, 0x1

    .line 3006
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3012
    :cond_20
    if-ne v0, v6, :cond_24

    const/4 v2, 0x2

    goto :goto_1d

    .line 3013
    :cond_24
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 3017
    :pswitch_2b
    if-ne v0, v6, :cond_2f

    const/4 v2, 0x3

    goto :goto_1d

    .line 3018
    :cond_2f
    if-ne v0, v7, :cond_33

    const/4 v2, 0x4

    goto :goto_1d

    .line 3019
    :cond_33
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 3023
    :pswitch_3a
    if-ne v0, v7, :cond_3e

    const/4 v2, 0x5

    goto :goto_1d

    .line 3024
    :cond_3e
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_17

    .line 3034
    .end local v0           #c:C
    :cond_45
    if-eq v2, v4, :cond_4d

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4d

    const/4 v5, 0x5

    if-ne v2, v5, :cond_17

    :cond_4d
    move v3, v4

    goto :goto_17

    .line 3009
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_18
        :pswitch_11
        :pswitch_2b
        :pswitch_11
        :pswitch_3a
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .registers 9
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 3044
    const/4 v2, 0x0

    .line 3045
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, p1, :cond_63

    .line 3046
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3048
    .local v0, c:C
    packed-switch v2, :pswitch_data_70

    .line 3080
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 3084
    .end local v0           #c:C
    :cond_16
    :goto_16
    return v3

    .line 3050
    .restart local v0       #c:C
    :pswitch_17
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_1f

    const/4 v2, 0x1

    .line 3045
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3051
    :cond_1f
    if-ne v0, v5, :cond_23

    const/4 v2, 0x2

    goto :goto_1c

    .line 3052
    :cond_23
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 3056
    :pswitch_2a
    if-ne v0, v5, :cond_2e

    const/4 v2, 0x3

    goto :goto_1c

    .line 3057
    :cond_2e
    if-ne v0, v6, :cond_32

    const/4 v2, 0x4

    goto :goto_1c

    .line 3058
    :cond_32
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 3062
    :pswitch_39
    if-ne v0, v6, :cond_3d

    const/4 v2, 0x5

    goto :goto_1c

    .line 3063
    :cond_3d
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 3069
    :pswitch_44
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_4c

    const/4 v2, 0x6

    goto :goto_1c

    .line 3070
    :cond_4c
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 3075
    :pswitch_53
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_5c

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 3076
    :cond_5c
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_16

    .line 3084
    .end local v0           #c:C
    :cond_63
    const/4 v4, 0x6

    if-eq v2, v4, :cond_6d

    const/4 v4, 0x7

    if-eq v2, v4, :cond_6d

    const/16 v4, 0x8

    if-ne v2, v4, :cond_16

    :cond_6d
    const/4 v3, 0x1

    goto :goto_16

    .line 3048
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_17
        :pswitch_44
        :pswitch_2a
        :pswitch_44
        :pswitch_39
        :pswitch_44
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .registers 6
    .parameter "a"
    .parameter "len"

    .prologue
    .line 3092
    const/4 v1, 0x0

    .line 3094
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, p1, :cond_19

    .line 3095
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3097
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_12

    if-nez v1, :cond_12

    .line 3098
    const/4 v1, 0x1

    .line 3094
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3099
    :cond_12
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3100
    const/4 v1, 0x0

    .line 3104
    .end local v0           #c:C
    .end local v1           #found:Z
    :cond_19
    return v1
.end method

.method private static minPositive(II)I
    .registers 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 375
    if-ltz p0, :cond_9

    if-ltz p1, :cond_9

    .line 376
    if-ge p0, p1, :cond_7

    .line 382
    .end local p0
    :cond_6
    :goto_6
    return p0

    .restart local p0
    :cond_7
    move p0, p1

    .line 376
    goto :goto_6

    .line 377
    :cond_9
    if-gez p0, :cond_6

    .line 379
    if-ltz p1, :cond_f

    move p0, p1

    .line 380
    goto :goto_6

    .line 382
    :cond_f
    const/4 p0, -0x1

    goto :goto_6
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 1113
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .registers 3
    .parameter "s"

    .prologue
    .line 1133
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1134
    .local v0, networkPortion:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 1938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1939
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1940
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_3b

    .line 1941
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1942
    .local v0, c:C
    if-nez v1, :cond_16

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_1c

    :cond_16
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1943
    :cond_1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1940
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1944
    :cond_22
    const/16 v4, 0x61

    if-lt v0, v4, :cond_2a

    const/16 v4, 0x7a

    if-le v0, v4, :cond_32

    :cond_2a
    const/16 v4, 0x41

    if-lt v0, v4, :cond_1f

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_1f

    .line 1945
    :cond_32
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1948
    .end local v0           #c:C
    :goto_3a
    return-object v4

    :cond_3b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3a
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .registers 2
    .parameter "number"

    .prologue
    .line 1146
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .registers 17
    .parameter "number"
    .parameter "includeLength"

    .prologue
    .line 1155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1156
    .local v6, numberLenReal:I
    move v5, v6

    .line 1157
    .local v5, numberLenEffective:I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_17

    const/4 v3, 0x1

    .line 1158
    .local v3, hasPlus:Z
    :goto_f
    if-eqz v3, :cond_13

    add-int/lit8 v5, v5, -0x1

    .line 1160
    :cond_13
    if-nez v5, :cond_19

    const/4 v9, 0x0

    .line 1185
    :goto_16
    return-object v9

    .line 1157
    .end local v3           #hasPlus:Z
    :cond_17
    const/4 v3, 0x0

    goto :goto_f

    .line 1162
    .restart local v3       #hasPlus:Z
    :cond_19
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1163
    .local v10, resultLen:I
    const/4 v2, 0x1

    .line 1164
    .local v2, extraBytes:I
    if-eqz p1, :cond_22

    add-int/lit8 v2, v2, 0x1

    .line 1165
    :cond_22
    add-int/2addr v10, v2

    .line 1167
    new-array v9, v10, [B

    .line 1169
    .local v9, result:[B
    const/4 v1, 0x0

    .line 1170
    .local v1, digitCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_27
    if-ge v4, v6, :cond_50

    .line 1171
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1172
    .local v0, c:C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_34

    .line 1170
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1173
    :cond_34
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4e

    const/4 v11, 0x4

    .line 1174
    .local v11, shift:I
    :goto_3a
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1175
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1173
    .end local v11           #shift:I
    :cond_4e
    const/4 v11, 0x0

    goto :goto_3a

    .line 1179
    .end local v0           #c:C
    :cond_50
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5f

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1181
    :cond_5f
    const/4 v7, 0x0

    .line 1182
    .local v7, offset:I
    if-eqz p1, :cond_6a

    add-int/lit8 v8, v7, 0x1

    .end local v7           #offset:I
    .local v8, offset:I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1183
    .end local v8           #offset:I
    .restart local v7       #offset:I
    :cond_6a
    if-eqz v3, :cond_72

    const/16 v12, 0x91

    :goto_6e
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_16

    :cond_72
    const/16 v12, 0x81

    goto :goto_6e
.end method

.method private static processPlusCodeWithinNanp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "networkDialStr"

    .prologue
    const/4 v5, 0x1

    .line 2933
    move-object v2, p0

    .line 2938
    .local v2, retStr:Ljava/lang/String;
    if-eqz p0, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1e

    .line 2941
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2942
    .local v1, newStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2944
    move-object v2, v1

    .line 2952
    .end local v1           #newStr:Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object v2

    .line 2946
    .restart local v1       #newStr:Ljava/lang/String;
    :cond_1f
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultIdp()Ljava/lang/String;

    move-result-object v0

    .line 2948
    .local v0, idpStr:Ljava/lang/String;
    const-string v3, "[+]"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 1810
    const/4 v0, 0x0

    .line 1811
    .local v0, p:I
    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1812
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_15

    .line 1813
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    .line 1815
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1818
    :cond_18
    return-void
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "s"
    .parameter "TOA"

    .prologue
    .line 813
    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 819
    .end local p0
    :cond_3
    :goto_3
    return-object p0

    .line 815
    .restart local p0
    :cond_4
    const/16 v0, 0x91

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_3

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "phoneNumber"

    .prologue
    .line 324
    if-nez p0, :cond_4

    .line 325
    const/4 v4, 0x0

    .line 343
    :goto_3
    return-object v4

    .line 327
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 328
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 330
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_20

    .line 331
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 332
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 339
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 343
    .end local v0           #c:C
    :cond_20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 763
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, np:Ljava/lang/String;
    const/4 v1, 0x7

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .registers 3
    .parameter "s"

    .prologue
    .line 829
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_14

    .line 830
    const/16 v0, 0x91

    .line 833
    :goto_13
    return v0

    :cond_14
    const/16 v0, 0x81

    goto :goto_13
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .registers 13
    .parameter "str"
    .parameter "acceptThailandCase"

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 3171
    const/4 v5, 0x0

    .line 3172
    .local v5, state:I
    const/4 v0, 0x0

    .line 3173
    .local v0, ccc:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 3174
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_17

    .line 3175
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3176
    .local v1, ch:C
    packed-switch v5, :pswitch_data_96

    .line 3245
    .end local v1           #ch:C
    :cond_17
    :goto_17
    return-object v6

    .line 3178
    .restart local v1       #ch:C
    :pswitch_18
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_20

    const/4 v5, 0x1

    .line 3174
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3179
    :cond_20
    if-ne v1, v9, :cond_24

    const/4 v5, 0x2

    goto :goto_1d

    .line 3180
    :cond_24
    if-ne v1, v8, :cond_2b

    .line 3181
    if-eqz p1, :cond_17

    .line 3182
    const/16 v5, 0x8

    goto :goto_1d

    .line 3186
    :cond_2b
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 3192
    :pswitch_32
    if-ne v1, v9, :cond_36

    const/4 v5, 0x3

    goto :goto_1d

    .line 3193
    :cond_36
    if-ne v1, v8, :cond_3a

    const/4 v5, 0x4

    goto :goto_1d

    .line 3194
    :cond_3a
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 3200
    :pswitch_41
    if-ne v1, v8, :cond_45

    const/4 v5, 0x5

    goto :goto_1d

    .line 3201
    :cond_45
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 3212
    :pswitch_4c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 3213
    .local v4, ret:I
    if-lez v4, :cond_76

    .line 3214
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 3215
    const/16 v7, 0x64

    if-ge v0, v7, :cond_60

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 3216
    :cond_60
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_17

    .line 3218
    :cond_68
    const/4 v7, 0x1

    if-eq v5, v7, :cond_71

    const/4 v7, 0x3

    if-eq v5, v7, :cond_71

    const/4 v7, 0x5

    if-ne v5, v7, :cond_73

    .line 3219
    :cond_71
    const/4 v5, 0x6

    goto :goto_1d

    .line 3221
    :cond_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 3223
    :cond_76
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 3229
    .end local v4           #ret:I
    :pswitch_7d
    if-ne v1, v10, :cond_82

    const/16 v5, 0x9

    goto :goto_1d

    .line 3230
    :cond_82
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_17

    .line 3235
    :pswitch_89
    if-ne v1, v10, :cond_17

    .line 3236
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_17

    .line 3176
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_18
        :pswitch_4c
        :pswitch_32
        :pswitch_4c
        :pswitch_41
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_7d
        :pswitch_89
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .registers 2
    .parameter "ch"

    .prologue
    .line 3142
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 3143
    add-int/lit8 v0, p0, -0x30

    .line 3145
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .registers 7
    .parameter "str"
    .parameter "currentIndex"

    .prologue
    const/4 v3, -0x1

    .line 3258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3259
    .local v2, length:I
    move v1, p1

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_14

    .line 3260
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3261
    .local v0, ch:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_15

    .line 3262
    add-int/lit8 v3, v1, 0x1

    .line 3267
    .end local v0           #ch:C
    :cond_14
    return v3

    .line 3263
    .restart local v0       #ch:C
    :cond_15
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_14

    .line 3259
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method
