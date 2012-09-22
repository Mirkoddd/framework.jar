.class Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "CustomerCrashReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/CustomerCrashReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCRPackageMonitor"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/CustomerCrashReport;


# direct methods
.method public constructor <init>(Lcom/samsung/CustomerCrashReport;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->this$0:Lcom/samsung/CustomerCrashReport;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->mContext:Landroid/content/Context;

    .line 289
    iput-object p2, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->mContext:Landroid/content/Context;

    .line 290
    return-void
.end method


# virtual methods
.method isExactlyCCR(Ljava/lang/String;)Z
    .registers 4
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .line 300
    const-string v1, "com.samsung.ccr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 309
    :cond_9
    :goto_9
    return v0

    .line 305
    :cond_a
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 309
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 6
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 5
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 315
    const-string/jumbo v0, "sys.ccr"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_f
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 8
    .parameter "packageName"
    .parameter "uid"
    .parameter "components"

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 361
    :goto_6
    return-void

    .line 344
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_42

    goto :goto_6

    .line 348
    :pswitch_15
    const-string/jumbo v1, "sys.ccr"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_1e} :catch_1f

    goto :goto_6

    .line 358
    :catch_1f
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "CCR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get apllicationEnabledSetting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 355
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_39
    :try_start_39
    const-string/jumbo v1, "sys.ccr"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_41} :catch_1f

    goto :goto_6

    .line 344
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_15
        :pswitch_15
        :pswitch_39
    .end packed-switch
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 323
    const-string/jumbo v0, "sys.ccr"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/CustomerCrashReport;->access$002(Z)Z

    .line 326
    :cond_12
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 5
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 335
    const-string/jumbo v0, "sys.ccr"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_f
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 3
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 330
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 5
    .parameter "packages"

    .prologue
    .line 373
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 374
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 376
    const-string/jumbo v1, "sys.ccr"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    :cond_18
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 5
    .parameter "packages"

    .prologue
    .line 382
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 383
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/CustomerCrashReport$CCRPackageMonitor;->isExactlyCCR(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 385
    const-string/jumbo v1, "sys.ccr"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    :cond_17
    return-void
.end method

.method public onUidRemoved(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 370
    return-void
.end method
