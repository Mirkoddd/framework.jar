.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SmsTracker"
.end annotation


# instance fields
.field public mCurIndex:I

.field public final mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeliveryIntent:Landroid/app/PendingIntent;

.field public mMessageRef:I

.field public mPrefMode:I

.field public mRetryCount:I

.field public final mSentIntent:Landroid/app/PendingIntent;

.field public mTotalCnt:I


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 5
    .parameter
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1818
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1819
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1820
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1821
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 1822
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1829
    return-void
.end method

.method constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 7
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "prefMode"

    .prologue
    const/4 v1, 0x1

    .line 1844
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1845
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1846
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1847
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 1848
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1849
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCurIndex:I

    .line 1850
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotalCnt:I

    .line 1851
    iput p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPrefMode:I

    .line 1852
    return-void
.end method

.method constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;III)V
    .registers 8
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "prefMode"

    .prologue
    .line 1833
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1834
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1835
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1836
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 1837
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1838
    iput p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCurIndex:I

    .line 1839
    iput p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTotalCnt:I

    .line 1840
    iput p6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPrefMode:I

    .line 1841
    return-void
.end method


# virtual methods
.method protected isMultipart()Z
    .registers 3

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1861
    .local v0, map:Ljava/util/HashMap;
    const-string/jumbo v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
