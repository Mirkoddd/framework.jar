.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/FileHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "FileHelper"

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->tag:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/io/File;

    const-string v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "bitmapPath"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v4, 0x1

    .line 228
    const/4 v3, 0x2

    .line 229
    .local v3, sampleSize:I
    const/4 v1, 0x0

    .line 231
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 236
    .local v0, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 239
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 245
    :try_start_c
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string v4, "ClipboardServiceEx"

    const-string v5, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_17
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_79

    move-result-object v1

    .line 255
    :cond_1b
    :goto_1b
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_45

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapOption.outWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bitmapOption.outHieght:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_45
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_6c

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mGridItemWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mGridItemHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_6c
    :goto_6c
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_86

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p3, :cond_86

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 247
    :catch_79
    move-exception v2

    .line 249
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1b

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(bitmapPath, bitmapOption);"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 262
    .end local v2           #e:Ljava/lang/Exception;
    :cond_86
    add-int/lit8 v3, v3, -0x1

    .line 266
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 270
    const/4 v4, 0x0

    :try_start_8b
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 271
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_90} :catch_92

    move-result-object v1

    .line 278
    :cond_91
    :goto_91
    return-object v1

    .line 272
    :catch_92
    move-exception v2

    .line 274
    .restart local v2       #e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_91

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkDir(Ljava/io/File;)Z
    .registers 3
    .parameter "file"

    .prologue
    .line 344
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public checkFile(Ljava/io/File;)Z
    .registers 3
    .parameter "file"

    .prologue
    .line 366
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public createThumnailImage(Ljava/lang/String;)Z
    .registers 13
    .parameter "filePath"

    .prologue
    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, thumFullPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 183
    .local v2, bm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 187
    .local v0, Result:Z
    const/16 v7, 0x99

    const/16 v8, 0x56

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 190
    if-nez v2, :cond_2c

    .line 191
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_2a

    const-string v7, "ClipboardServiceEx"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v1, v0

    .line 220
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_2b
    return v1

    .line 195
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_2c
    const/4 v4, 0x0

    .line 198
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_2d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_6d

    .line 200
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    if-eqz v5, :cond_3c

    .line 201
    :try_start_34
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_d8

    .line 202
    const/4 v0, 0x1

    .line 210
    :cond_3c
    if-eqz v5, :cond_41

    .line 211
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_47

    :cond_41
    move-object v4, v5

    .line 219
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_42
    :goto_42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 220
    .restart local v1       #Result:I
    goto :goto_2b

    .line 213
    .end local v1           #Result:I
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_47
    move-exception v3

    .line 214
    .local v3, e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_68

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_68
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 217
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_42

    .line 205
    .end local v3           #e:Ljava/io/IOException;
    :catch_6d
    move-exception v3

    .line 206
    .local v3, e:Ljava/lang/Exception;
    :goto_6e
    :try_start_6e
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_7b

    const-string v7, "ClipboardServiceEx"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_7b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_a9

    .line 210
    if-eqz v4, :cond_42

    .line 211
    :try_start_80
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_42

    .line 213
    :catch_84
    move-exception v3

    .line 214
    .local v3, e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_a5

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_a5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 209
    .end local v3           #e:Ljava/io/IOException;
    :catchall_a9
    move-exception v7

    .line 210
    :goto_aa
    if-eqz v4, :cond_af

    .line 211
    :try_start_ac
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    .line 216
    :cond_af
    :goto_af
    throw v7

    .line 213
    :catch_b0
    move-exception v3

    .line 214
    .restart local v3       #e:Ljava/io/IOException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_d1

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_d1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    .line 209
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_d5
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_aa

    .line 205
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_d8
    move-exception v3

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_6e
.end method

.method public delete(Ljava/io/File;)V
    .registers 8
    .parameter "file"

    .prologue
    .line 378
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 379
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 390
    :cond_9
    :goto_9
    return-void

    .line 383
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 384
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 385
    .local v4, list:[Ljava/io/File;
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_17
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 386
    .local v1, f:Ljava/io/File;
    invoke-virtual {p0, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 388
    .end local v1           #f:Ljava/io/File;
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_9
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .registers 19
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 75
    const/4 v7, 0x0

    .line 76
    .local v7, Result:Z
    const/4 v10, 0x0

    .line 77
    .local v10, inputStream:Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 80
    .local v12, outputStream:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 81
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v2, v3, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 82
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_18} :catch_55
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_18} :catch_a2

    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .local v11, inputStream:Ljava/io/FileInputStream;
    move-object v10, v11

    .line 93
    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    :goto_19
    :try_start_19
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_20} :catch_a8

    .end local v12           #outputStream:Ljava/io/FileOutputStream;
    .local v13, outputStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 100
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .restart local v12       #outputStream:Ljava/io/FileOutputStream;
    :cond_21
    :goto_21
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 101
    .local v1, fcin:Ljava/nio/channels/FileChannel;
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 103
    .local v6, fcout:Ljava/nio/channels/FileChannel;
    :try_start_29
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 104
    .local v4, lSize:J
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 106
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 107
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 109
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 110
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_1a3
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3e} :catch_11b

    .line 111
    const/4 v7, 0x1

    .line 120
    if-eqz v1, :cond_44

    :try_start_41
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 121
    :cond_44
    if-eqz v6, :cond_49

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 122
    :cond_49
    if-eqz v10, :cond_4e

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 123
    :cond_4e
    if-eqz v12, :cond_53

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_53} :catch_f5

    .end local v4           #lSize:J
    :cond_53
    :goto_53
    move v8, v7

    .line 131
    .end local v1           #fcin:Ljava/nio/channels/FileChannel;
    .end local v6           #fcout:Ljava/nio/channels/FileChannel;
    .end local v7           #Result:Z
    .local v8, Result:I
    :goto_54
    return v8

    .line 84
    .end local v8           #Result:I
    .restart local v7       #Result:Z
    :catch_55
    move-exception v9

    .line 85
    .local v9, e:Ljava/io/FileNotFoundException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_76

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InputStream~ FileNotFoundException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_76
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_a0

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    move v8, v7

    .line 87
    .restart local v8       #Result:I
    goto :goto_54

    .line 88
    .end local v8           #Result:I
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_a2
    move-exception v9

    .line 89
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_19

    .line 94
    .end local v9           #e:Ljava/io/IOException;
    :catch_a8
    move-exception v9

    .line 95
    .local v9, e:Ljava/io/FileNotFoundException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_c9

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OutputStream~ FileNotFoundException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_c9
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 124
    .end local v9           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #fcin:Ljava/nio/channels/FileChannel;
    .restart local v4       #lSize:J
    .restart local v6       #fcout:Ljava/nio/channels/FileChannel;
    :catch_f5
    move-exception v9

    .line 125
    .local v9, e:Ljava/io/IOException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_116

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_116
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_53

    .line 112
    .end local v4           #lSize:J
    .end local v9           #e:Ljava/io/IOException;
    :catch_11b
    move-exception v9

    .line 113
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_11c
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_13c

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ IOException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_13c
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_166

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catchall {:try_start_11c .. :try_end_166} :catchall_1a3

    .line 115
    :cond_166
    const/4 v7, 0x0

    .line 120
    if-eqz v1, :cond_16c

    :try_start_169
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 121
    :cond_16c
    if-eqz v6, :cond_171

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 122
    :cond_171
    if-eqz v10, :cond_176

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 123
    :cond_176
    if-eqz v12, :cond_53

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_17b} :catch_17d

    goto/16 :goto_53

    .line 124
    :catch_17d
    move-exception v9

    .line 125
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_19e

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_19e
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_53

    .line 119
    .end local v9           #e:Ljava/io/IOException;
    :catchall_1a3
    move-exception v2

    .line 120
    if-eqz v1, :cond_1a9

    :try_start_1a6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 121
    :cond_1a9
    if-eqz v6, :cond_1ae

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 122
    :cond_1ae
    if-eqz v10, :cond_1b3

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 123
    :cond_1b3
    if-eqz v12, :cond_1b8

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1b8} :catch_1b9

    .line 127
    :cond_1b8
    :goto_1b8
    throw v2

    .line 124
    :catch_1b9
    move-exception v9

    .line 125
    .restart local v9       #e:Ljava/io/IOException;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1da

    const-string v3, "ClipboardServiceEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1da
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b8
.end method

.method public getAbsoluteNullFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .registers 3
    .parameter "file"

    .prologue
    .line 371
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 373
    .local v0, list:[Ljava/io/File;
    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 328
    const-string v1, ""

    .line 329
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, ext:Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 331
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 335
    :goto_17
    return-object v1

    .line 333
    :cond_18
    const-string/jumbo v1, "unmounted"

    goto :goto_17
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 11
    .parameter "file"

    .prologue
    .line 287
    const/4 v5, 0x0

    .line 288
    .local v5, result:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 289
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 291
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_3
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_f

    const-string v6, "ClipboardServiceEx"

    const-string/jumbo v7, "load object file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_113
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_14} :catch_3c
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_14} :catch_66
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_14} :catch_90
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_bb
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_14} :catch_e7

    .line 293
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_14
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_12f
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_158
    .catch Ljava/io/StreamCorruptedException; {:try_start_14 .. :try_end_19} :catch_14f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_19} :catch_146
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_13d
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_19} :catch_136

    .line 294
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .local v4, ois:Ljava/io/ObjectInputStream;
    :try_start_19
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_132
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1c} :catch_15c
    .catch Ljava/io/StreamCorruptedException; {:try_start_19 .. :try_end_1c} :catch_153
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_1c} :catch_14a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_141
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_1c} :catch_139

    move-result-object v5

    .line 312
    if-eqz v4, :cond_22

    :try_start_1f
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_22
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_2a

    :cond_27
    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 319
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v5           #result:Ljava/lang/Object;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_29
    :goto_29
    return-object v5

    .line 314
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #result:Ljava/lang/Object;
    :catch_2a
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_36

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 318
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_29

    .line 295
    .end local v0           #e:Ljava/io/IOException;
    :catch_3c
    move-exception v0

    .line 296
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3d
    :try_start_3d
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_48

    const-string v6, "ClipboardServiceEx"

    const-string v7, "FileNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_48
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_113

    .line 312
    if-eqz v3, :cond_50

    :try_start_4d
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_50
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_55} :catch_56

    goto :goto_29

    .line 314
    :catch_56
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_62

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_62
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 298
    .end local v0           #e:Ljava/io/IOException;
    :catch_66
    move-exception v0

    .line 299
    .local v0, e:Ljava/io/StreamCorruptedException;
    :goto_67
    :try_start_67
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_72

    const-string v6, "ClipboardServiceEx"

    const-string v7, "StreamCorruptedException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_72
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_113

    .line 312
    if-eqz v3, :cond_7a

    :try_start_77
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_7a
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7f} :catch_80

    goto :goto_29

    .line 314
    :catch_80
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_8c

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_8c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 301
    .end local v0           #e:Ljava/io/IOException;
    :catch_90
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_91
    :try_start_91
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_9c

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_9c
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_91 .. :try_end_9f} :catchall_113

    .line 312
    if-eqz v3, :cond_a4

    :try_start_a1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_a4
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a9} :catch_aa

    goto :goto_29

    .line 314
    :catch_aa
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_b6

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_b6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_29

    .line 304
    .end local v0           #e:Ljava/io/IOException;
    :catch_bb
    move-exception v0

    .line 305
    .restart local v0       #e:Ljava/io/IOException;
    :goto_bc
    :try_start_bc
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_c7

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_c7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ca
    .catchall {:try_start_bc .. :try_end_ca} :catchall_113

    .line 312
    if-eqz v3, :cond_cf

    :try_start_cc
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_cf
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d4} :catch_d6

    goto/16 :goto_29

    .line 314
    :catch_d6
    move-exception v0

    .line 315
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e2

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_e2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_29

    .line 307
    .end local v0           #e:Ljava/io/IOException;
    :catch_e7
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/ClassCastException;
    :goto_e8
    :try_start_e8
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_f3

    const-string v6, "ClipboardServiceEx"

    const-string v7, "ClassCastException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_f3
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_f6
    .catchall {:try_start_e8 .. :try_end_f6} :catchall_113

    .line 312
    if-eqz v3, :cond_fb

    :try_start_f8
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_fb
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_100} :catch_102

    goto/16 :goto_29

    .line 314
    :catch_102
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_10e

    const-string v6, "ClipboardServiceEx"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_10e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_29

    .line 311
    .end local v0           #e:Ljava/io/IOException;
    :catchall_113
    move-exception v6

    .line 312
    :goto_114
    if-eqz v3, :cond_119

    :try_start_116
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 313
    :cond_119
    if-eqz v1, :cond_11e

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_11e} :catch_11f

    .line 317
    :cond_11e
    :goto_11e
    throw v6

    .line 314
    :catch_11f
    move-exception v0

    .line 315
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_12b

    const-string v7, "ClipboardServiceEx"

    const-string v8, "close IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_12b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11e

    .line 311
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_12f
    move-exception v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_114

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catchall_132
    move-exception v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_114

    .line 307
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_136
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_e8

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_139
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_e8

    .line 304
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_13d
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_bc

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_141
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_bc

    .line 301
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_146
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_91

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_14a
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_91

    .line 298
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_14f
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_67

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_153
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_67

    .line 295
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_158
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3d

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_15c
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3d
.end method

.method public makeDir(Ljava/io/File;)V
    .registers 5
    .parameter "file"

    .prologue
    const/4 v2, -0x1

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 354
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 355
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 357
    :cond_13
    return-void
.end method

.method public saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 13
    .parameter "file"
    .parameter "obj"

    .prologue
    .line 144
    if-nez p2, :cond_10

    .line 145
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "ClipboardServiceEx"

    const-string/jumbo v7, "obj == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_e
    const/4 v5, 0x0

    .line 172
    :cond_f
    :goto_f
    return v5

    .line 150
    :cond_10
    const/4 v5, 0x1

    .line 151
    .local v5, result:Z
    const/4 v1, 0x0

    .line 152
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 155
    .local v3, oos:Ljava/io/ObjectOutputStream;
    :try_start_13
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_97
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_54

    .line 156
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_18
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_c8
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_cf

    .line 157
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .local v4, oos:Ljava/io/ObjectOutputStream;
    :try_start_1d
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_d2

    .line 164
    if-eqz v4, :cond_25

    :try_start_22
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 165
    :cond_25
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2d

    :cond_2a
    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 169
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_f

    .line 166
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_2d
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4e

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_4e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 170
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_f

    .line 158
    .end local v0           #e:Ljava/io/IOException;
    :catch_54
    move-exception v0

    .line 159
    .restart local v0       #e:Ljava/io/IOException;
    :goto_55
    :try_start_55
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_62

    const-string v6, "ClipboardServiceEx"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_62
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_97

    .line 161
    const/4 v5, 0x0

    .line 164
    if-eqz v3, :cond_6b

    :try_start_68
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 165
    :cond_6b
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_70} :catch_71

    goto :goto_f

    .line 166
    :catch_71
    move-exception v0

    .line 167
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_92

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    :catchall_97
    move-exception v6

    .line 164
    :goto_98
    if-eqz v3, :cond_9d

    :try_start_9a
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 165
    :cond_9d
    if-eqz v1, :cond_a2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a2} :catch_a3

    .line 169
    :cond_a2
    :goto_a2
    throw v6

    .line 166
    :catch_a3
    move-exception v0

    .line 167
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_c4

    const-string v7, "ClipboardServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_c4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_c8
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_98

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catchall_cb
    move-exception v6

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_98

    .line 158
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_cf
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_55

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_d2
    move-exception v0

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_55
.end method
