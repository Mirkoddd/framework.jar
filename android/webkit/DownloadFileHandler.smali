.class Landroid/webkit/DownloadFileHandler;
.super Landroid/os/Handler;
.source "DownloadFileHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DownloadFileHandler"

.field public static MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

.field public static MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;


# instance fields
.field public isDownloadabelfile:Z

.field public mContentDisposition:Ljava/lang/String;

.field public mContentLength:J

.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field public mMimeType:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "application/vnd.oma.dd+xml"

    sput-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    .line 47
    const-string v0, "application/vnd.oma.drm.roap-trigger+xml"

    sput-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    .line 49
    const-string v0, "application/vnd.oma.drm.ro+xml"

    sput-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

    .line 50
    const-string v0, "application/vnd.oma.drm.dcf"

    sput-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

    .line 51
    const-string v0, "application/vnd.oma.drm.roap-pdu+xml"

    sput-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    .line 56
    iput-object p1, p0, Landroid/webkit/DownloadFileHandler;->mUrl:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Landroid/webkit/DownloadFileHandler;->mContentDisposition:Ljava/lang/String;

    .line 58
    iput-wide p5, p0, Landroid/webkit/DownloadFileHandler;->mContentLength:J

    .line 59
    iput-object p2, p0, Landroid/webkit/DownloadFileHandler;->mUserAgent:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Landroid/webkit/DownloadFileHandler;->mMimeType:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private static getSubType(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "contentType"

    .prologue
    const/16 v10, 0x3b

    const/16 v9, 0x22

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x20

    .line 164
    const/4 v3, 0x0

    .line 166
    .local v3, bValue:Ljava/lang/String;
    const-string/jumbo v5, "type="

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, bPos:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_80

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, subType:Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 170
    .local v2, bValpos:I
    add-int/lit8 v2, v2, 0x1

    .line 172
    :goto_25
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v9, :cond_31

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_34

    .line 173
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 174
    :cond_34
    move v1, v2

    .line 178
    .local v1, bValEndPos:I
    :cond_35
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_57

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_57

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_57

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_57

    .line 183
    add-int/lit8 v1, v1, 0x1

    .line 184
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_35

    .line 187
    :cond_57
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_6f

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_6f

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_6f

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_71

    .line 192
    :cond_6f
    add-int/lit8 v1, v1, -0x1

    .line 198
    :cond_71
    :goto_71
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_7a

    .line 199
    add-int/lit8 v1, v1, -0x1

    goto :goto_71

    .line 206
    :cond_7a
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 216
    .end local v1           #bValEndPos:I
    .end local v2           #bValpos:I
    .end local v4           #subType:Ljava/lang/String;
    :cond_80
    return-object v3
.end method

.method static isDownLoadableContent(Ljava/lang/String;)Z
    .registers 5
    .parameter "contentType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-static {p0}, Landroid/webkit/DownloadFileHandler;->isOMAorDRMMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 109
    :cond_8
    :goto_8
    return v1

    .line 93
    :cond_9
    invoke-static {p0}, Landroid/webkit/DownloadFileHandler;->getSubType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, bValue:Ljava/lang/String;
    if-nez v0, :cond_11

    move v1, v2

    .line 99
    goto :goto_8

    .line 101
    :cond_11
    sget-object v3, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_RO_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DRM_DCF:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPPDU_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 109
    goto :goto_8
.end method

.method private static isOMAorDRMMimeType(Ljava/lang/String;)Z
    .registers 4
    .parameter "mimeType"

    .prologue
    .line 77
    sget-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_DD_XML:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Landroid/webkit/DownloadFileHandler;->MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 79
    :cond_10
    const-string v0, "DownloadFileHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOMAorDRMMimeType: mimeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method


# virtual methods
.method public didReceiveData([BI)V
    .registers 6
    .parameter "data"
    .parameter "length"

    .prologue
    .line 69
    iget-object v1, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v1

    .line 70
    :try_start_3
    iget-object v0, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public handleFile()Z
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, downloadStream:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    .line 121
    .local v5, result:Z
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v7, "/sdcard/tempfile1.xml"

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_42

    .line 122
    .end local v1           #downloadStream:Ljava/io/FileOutputStream;
    .local v2, downloadStream:Ljava/io/FileOutputStream;
    const/4 v7, 0x1

    :try_start_b
    iput-boolean v7, p0, Landroid/webkit/DownloadFileHandler;->isDownloadabelfile:Z

    .line 123
    const-string v7, "DownloadFileHandler"

    const-string v8, "****Download File Creation Sucess *****"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_14} :catch_b5

    .line 131
    iget-object v7, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v7

    .line 136
    :try_start_17
    iget-object v6, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v6}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 137
    .local v0, data:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_3e

    iget v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_97

    if-eqz v6, :cond_3e

    .line 138
    if-eqz v2, :cond_39

    .line 140
    :try_start_25
    iget-object v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v8, 0x0

    iget v9, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-virtual {v2, v6, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 141
    const-string v6, "DownloadFileHandler"

    const-string v8, "***Downloadable File Writing Sucess *****"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_90
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_34} :catch_66

    .line 147
    if-eqz v2, :cond_39

    .line 148
    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_97
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_4b

    .line 156
    :cond_39
    :goto_39
    :try_start_39
    iget-object v6, p0, Landroid/webkit/DownloadFileHandler;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v6, v0}, Landroid/webkit/ByteArrayBuilder;->releaseChunk(Landroid/webkit/ByteArrayBuilder$Chunk;)V

    .line 158
    :cond_3e
    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_97

    move-object v1, v2

    .end local v2           #downloadStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadStream:Ljava/io/FileOutputStream;
    move v6, v5

    .line 159
    .end local v0           #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    :goto_41
    return v6

    .line 124
    :catch_42
    move-exception v3

    .line 125
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_43
    const-string v7, "DownloadFileHandler"

    const-string v8, "Fail to Create Download temp file"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 150
    .end local v1           #downloadStream:Ljava/io/FileOutputStream;
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v2       #downloadStream:Ljava/io/FileOutputStream;
    :catch_4b
    move-exception v4

    .line 151
    .local v4, ex:Ljava/io/IOException;
    :try_start_4c
    const-string v6, "DownloadFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception when closing the file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_97

    .line 152
    const/4 v5, 0x0

    .line 154
    goto :goto_39

    .line 142
    .end local v4           #ex:Ljava/io/IOException;
    :catch_66
    move-exception v3

    .line 143
    .local v3, e:Ljava/io/IOException;
    :try_start_67
    const-string v6, "DownloadFileHandler"

    const-string v8, "****Download File Writing Failure *****"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_90

    .line 144
    const/4 v5, 0x0

    .line 147
    if-eqz v2, :cond_39

    .line 148
    :try_start_71
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_97
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_39

    .line 150
    :catch_75
    move-exception v4

    .line 151
    .restart local v4       #ex:Ljava/io/IOException;
    :try_start_76
    const-string v6, "DownloadFileHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception when closing the file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_76 .. :try_end_8e} :catchall_97

    .line 152
    const/4 v5, 0x0

    .line 154
    goto :goto_39

    .line 146
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_90
    move-exception v6

    .line 147
    if-eqz v2, :cond_96

    .line 148
    :try_start_93
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9a

    .line 153
    :cond_96
    :goto_96
    :try_start_96
    throw v6

    .line 158
    .end local v0           #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    :catchall_97
    move-exception v6

    monitor-exit v7
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_97

    throw v6

    .line 150
    .restart local v0       #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    :catch_9a
    move-exception v4

    .line 151
    .restart local v4       #ex:Ljava/io/IOException;
    :try_start_9b
    const-string v8, "DownloadFileHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception when closing the file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_9b .. :try_end_b3} :catchall_97

    .line 152
    const/4 v5, 0x0

    goto :goto_96

    .line 124
    .end local v0           #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v4           #ex:Ljava/io/IOException;
    :catch_b5
    move-exception v3

    move-object v1, v2

    .end local v2           #downloadStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadStream:Ljava/io/FileOutputStream;
    goto :goto_43
.end method
