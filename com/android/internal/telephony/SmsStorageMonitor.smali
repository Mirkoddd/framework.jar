.class public final Lcom/android/internal/telephony/SmsStorageMonitor;
.super Landroid/os/Handler;
.source "SmsStorageMonitor.java"


# static fields
.field private static final EVENT_ICC_AVAILABLE:I = 0x4

.field private static final EVENT_ICC_FULL:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x3

.field private static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0x2

.field private static final EVENT_SET_MEMORY_RSP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SmsStorageMonitor"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field private static boot_time:Z

.field private static gcf_flag:Z

.field private static receive_storage_low_event:Z

.field private static receive_storage_ok_event:Z


# instance fields
.field private isSimFull:Z

.field final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mGcfResultReceiver:Landroid/content/BroadcastReceiver;

.field mReceiveIntent:Z

.field private mReportMemoryStatusPending:Z

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field mSimStorageAvailable:Z

.field mStorageAvailable:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SmsStorageMonitor;->boot_time:Z

    .line 67
    sput-boolean v1, Lcom/android/internal/telephony/SmsStorageMonitor;->gcf_flag:Z

    .line 68
    sput-boolean v1, Lcom/android/internal/telephony/SmsStorageMonitor;->receive_storage_low_event:Z

    .line 69
    sput-boolean v1, Lcom/android/internal/telephony/SmsStorageMonitor;->receive_storage_ok_event:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .registers 7
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 62
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    .line 63
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mSimStorageAvailable:Z

    .line 64
    iput-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReceiveIntent:Z

    .line 73
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->isSimFull:Z

    .line 216
    new-instance v2, Lcom/android/internal/telephony/SmsStorageMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsStorageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    new-instance v2, Lcom/android/internal/telephony/SmsStorageMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SmsStorageMonitor$2;-><init>(Lcom/android/internal/telephony/SmsStorageMonitor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mGcfResultReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    .line 88
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->createWakelock()V

    .line 92
    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v1, gcf_filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v2, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mGcfResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/internal/telephony/SmsStorageMonitor;->receive_storage_low_event:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/android/internal/telephony/SmsStorageMonitor;->receive_storage_low_event:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/internal/telephony/SmsStorageMonitor;->receive_storage_ok_event:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/android/internal/telephony/SmsStorageMonitor;->receive_storage_ok_event:Z

    return p0
.end method

.method private createWakelock()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 174
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SmsStorageMonitor"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 176
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    return-void
.end method

.method public getSimFullStatus()Z
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->isSimFull:Z

    return v0
.end method

.method public handleIccFull()V
    .registers 5

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->isSimFull:Z

    .line 188
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_9a

    .line 170
    :cond_7
    :goto_7
    return-void

    .line 126
    :pswitch_8
    const-string v2, "SmsStorageMonitor"

    const-string v3, "EVENT_ICC_FULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-boolean v4, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mSimStorageAvailable:Z

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsStorageMonitor;->handleIccFull()V

    goto :goto_7

    .line 131
    :pswitch_15
    const-string v2, "SmsStorageMonitor"

    const-string v3, "EVENT_ICC_AVAILABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-boolean v5, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mSimStorageAvailable:Z

    goto :goto_7

    .line 135
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 136
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_44

    .line 137
    iput-boolean v5, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    .line 138
    const-string v2, "SmsStorageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Memory status report to modem pending : mStorageAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 141
    :cond_44
    iput-boolean v4, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    goto :goto_7

    .line 146
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_47
    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReportMemoryStatusPending:Z

    if-eqz v2, :cond_7

    .line 147
    const-string v2, "SmsStorageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_7

    .line 155
    :pswitch_72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 157
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_8f

    .line 159
    const-string v2, "SmsStorageMonitor"

    const-string v3, "General Response Failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SmsStorageMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 162
    .local v1, reply:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v3, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_7

    .line 166
    .end local v1           #reply:Landroid/os/Message;
    :cond_8f
    const-string v2, "SmsStorageMonitor"

    const-string/jumbo v3, "reportSmsMemoryStatus set successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 124
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1f
        :pswitch_47
        :pswitch_15
        :pswitch_72
    .end packed-switch
.end method

.method public isReceiveIntent()Z
    .registers 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mReceiveIntent:Z

    return v0
.end method

.method public isSIMStorageAvailable()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mSimStorageAvailable:Z

    return v0
.end method

.method public isStorageAvailable()Z
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mStorageAvailable:Z

    return v0
.end method

.method public resetSimFullStatus()V
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->isSimFull:Z

    .line 196
    return-void
.end method

.method public setSIMStorageAvailable(Z)V
    .registers 2
    .parameter "available"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/android/internal/telephony/SmsStorageMonitor;->mSimStorageAvailable:Z

    .line 211
    return-void
.end method
