.class Landroid/webkit/JniUtil;
.super Ljava/lang/Object;
.source "JniUtil.java"


# static fields
.field private static final ANDROID_CONTENT:Ljava/lang/String; = "content:"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static sCacheDirectory:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sDatabaseDirectory:Ljava/lang/String;

.field private static sUseChromiumHttpStack:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string/jumbo v0, "webcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    const-string v0, "chromium_net"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canSatisfyMemoryAllocation(J)Z
    .registers 10
    .parameter "bytesRequested"

    .prologue
    .line 198
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 199
    sget-object v4, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 201
    .local v2, manager:Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 202
    .local v3, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 203
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long v0, v4, v6

    .line 204
    .local v0, leftToAllocate:J
    iget-boolean v4, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v4, :cond_25

    cmp-long v4, p0, v0

    if-gez v4, :cond_25

    const/4 v4, 0x1

    :goto_24
    return v4

    :cond_25
    const/4 v4, 0x0

    goto :goto_24
.end method

.method private static checkInitialized()V
    .registers 2

    .prologue
    .line 45
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call CookieSyncManager::createInstance() or create a webview before using this class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_c
    return-void
.end method

.method private static declared-synchronized contentUrlSize(Ljava/lang/String;)J
    .registers 16
    .parameter "url"

    .prologue
    .line 103
    const-class v12, Landroid/webkit/JniUtil;

    monitor-enter v12

    :try_start_3
    const-string v11, "content:"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a9

    move-result v11

    if-eqz v11, :cond_a6

    .line 109
    const/16 v11, 0x3f

    :try_start_d
    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 110
    .local v4, mimeIndex:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_19

    .line 111
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 113
    :cond_19
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 114
    .local v10, uri:Landroid/net/Uri;
    sget-object v11, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 115
    .local v3, is:Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_89

    .line 117
    .local v0, buffer:[B
    const-wide/16 v6, 0x0

    .line 119
    .local v6, size:J
    :goto_2d
    :try_start_2d
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_84

    move-result v5

    .local v5, n:I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_37

    .line 120
    int-to-long v13, v5

    add-long/2addr v6, v13

    goto :goto_2d

    .line 123
    :cond_37
    :try_start_37
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 126
    sget-object v11, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    if-eqz v11, :cond_82

    .line 127
    const-wide/16 v13, 0x1000

    div-long v8, v6, v13

    .line 128
    .local v8, time:J
    const-string/jumbo v11, "webkit"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sendDVFSBoradCastIntent for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v1, dvfsLockIntent:Landroid/content/Intent;
    const-string v11, "com.sec.android.intent.action.DVFS_BOOSTER"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v11, "PACKAGE"

    const-string v13, "android.webkit"

    invoke-virtual {v1, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v11, "CPU"

    const-string v13, "MAX"

    invoke-virtual {v1, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v11, "DURATION"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    sget-object v11, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v11, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_82
    .catchall {:try_start_37 .. :try_end_82} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_82} :catch_89

    .line 143
    .end local v0           #buffer:[B
    .end local v1           #dvfsLockIntent:Landroid/content/Intent;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #mimeIndex:I
    .end local v5           #n:I
    .end local v6           #size:J
    .end local v8           #time:J
    .end local v10           #uri:Landroid/net/Uri;
    :cond_82
    :goto_82
    monitor-exit v12

    return-wide v6

    .line 123
    .restart local v0       #buffer:[B
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #mimeIndex:I
    .restart local v6       #size:J
    .restart local v10       #uri:Landroid/net/Uri;
    :catchall_84
    move-exception v11

    :try_start_85
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v11
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_89} :catch_89

    .line 138
    .end local v0           #buffer:[B
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #mimeIndex:I
    .end local v6           #size:J
    .end local v10           #uri:Landroid/net/Uri;
    :catch_89
    move-exception v2

    .line 139
    .local v2, e:Ljava/lang/Exception;
    :try_start_8a
    const-string/jumbo v11, "webkit"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_8a .. :try_end_a3} :catchall_a9

    .line 140
    const-wide/16 v6, 0x0

    goto :goto_82

    .line 143
    .end local v2           #e:Ljava/lang/Exception;
    :cond_a6
    const-wide/16 v6, 0x0

    goto :goto_82

    .line 103
    :catchall_a9
    move-exception v11

    monitor-exit v12

    throw v11
.end method

.method private static declared-synchronized contentUrlStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 155
    const-class v4, Landroid/webkit/JniUtil;

    monitor-enter v4

    :try_start_4
    const-string v5, "content:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_45

    move-result v5

    if-eqz v5, :cond_28

    .line 161
    const/16 v5, 0x3f

    :try_start_e
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 162
    .local v1, mimeIndex:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1a

    .line 163
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 165
    :cond_1a
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 166
    .local v2, uri:Landroid/net/Uri;
    sget-object v5, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_45
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_2a

    move-result-object v3

    .line 172
    .end local v1           #mimeIndex:I
    .end local v2           #uri:Landroid/net/Uri;
    :cond_28
    :goto_28
    monitor-exit v4

    return-object v3

    .line 167
    :catch_2a
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v5, "webkit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_45

    goto :goto_28

    .line 155
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_45
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static declared-synchronized getAutofillQueryUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 190
    const-class v1, Landroid/webkit/JniUtil;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 193
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "web_autofill_query_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 190
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getCacheDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 81
    const-class v2, Landroid/webkit/JniUtil;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 83
    sget-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 84
    sget-object v1, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 85
    .local v0, cacheDir:Ljava/io/File;
    if-nez v0, :cond_1a

    .line 86
    const-string v1, ""

    sput-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;

    .line 92
    :cond_16
    :goto_16
    sget-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_21

    monitor-exit v2

    return-object v1

    .line 88
    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_21

    goto :goto_16

    .line 81
    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static declared-synchronized getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 59
    const-class v0, Landroid/webkit/JniUtil;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getDatabaseDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    const-class v1, Landroid/webkit/JniUtil;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/webkit/JniUtil;->checkInitialized()V

    .line 69
    sget-object v0, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 70
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;

    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    .line 73
    :cond_18
    sget-object v0, Landroid/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeUseChromiumHttpStack()Z
.end method

.method protected static declared-synchronized setContext(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 51
    const-class v1, Landroid/webkit/JniUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-eqz v0, :cond_9

    .line 56
    :goto_7
    monitor-exit v1

    return-void

    .line 55
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_7

    .line 51
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static useChromiumHttpStack()Z
    .registers 1

    .prologue
    .line 183
    sget-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 184
    invoke-static {}, Landroid/webkit/JniUtil;->nativeUseChromiumHttpStack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    .line 186
    :cond_e
    sget-object v0, Landroid/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
