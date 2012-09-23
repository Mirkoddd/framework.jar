.class public Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataBitmap.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mInitBaseValue:Ljava/lang/String;

.field private mInitBaseValueCheck:Z

.field private mValue:Ljava/lang/String;

.field private mValueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 73
    return-void
.end method

.method private CompareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 34
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 292
    const/4 v10, 0x5

    .line 293
    .local v10, compareCount:I
    const/16 v11, 0x80

    .line 295
    .local v11, compareSize:I
    const/4 v2, 0x0

    .line 296
    .local v2, Result:Z
    const/16 v17, 0x0

    .line 297
    .local v17, fisSrc:Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 300
    .local v15, fisDest:Ljava/io/FileInputStream;
    :try_start_7
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_10} :catch_42

    .line 301
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .local v18, fisSrc:Ljava/io/FileInputStream;
    :try_start_10
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_19} :catch_1d0

    .line 307
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .local v16, fisDest:Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 310
    .local v14, fileSize:I
    :try_start_1a
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v14, v0

    .line 311
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v14, v0, :cond_5d

    .line 313
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 314
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3c} :catch_48

    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 401
    .end local v2           #Result:Z
    .end local v14           #fileSize:I
    .local v3, Result:I
    :goto_41
    return v3

    .line 302
    .end local v3           #Result:I
    .restart local v2       #Result:Z
    :catch_42
    move-exception v12

    .line 303
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_43
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v3, v2

    .line 304
    .restart local v3       #Result:I
    goto :goto_41

    .line 317
    .end local v3           #Result:I
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v14       #fileSize:I
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_48
    move-exception v12

    .line 318
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 320
    :try_start_4c
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 321
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_58

    :goto_52
    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 325
    .restart local v3       #Result:I
    goto :goto_41

    .line 322
    .end local v3           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_58
    move-exception v13

    .line 323
    .local v13, e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 328
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #e1:Ljava/io/IOException;
    :cond_5d
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ge v14, v0, :cond_74

    .line 331
    :try_start_63
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 332
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_6f

    :goto_69
    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 336
    .restart local v3       #Result:I
    goto :goto_41

    .line 333
    .end local v3           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_6f
    move-exception v13

    .line 334
    .restart local v13       #e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_69

    .line 339
    .end local v13           #e1:Ljava/io/IOException;
    :cond_74
    const/16 v27, 0x80

    move/from16 v0, v27

    if-gt v14, v0, :cond_f6

    move v9, v14

    .line 341
    .local v9, buffSize:I
    :goto_7b
    const/16 v21, 0x0

    .line 343
    .local v21, iCnt:I
    div-int v26, v14, v9

    .line 344
    .local v26, tmp:I
    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_f9

    const/16 v21, 0x5

    .line 348
    :goto_89
    const/16 v22, 0x0

    .line 350
    .local v22, offset:I
    mul-int v27, v9, v21

    sub-int v26, v14, v27

    .line 351
    div-int v22, v26, v21

    .line 354
    const/4 v4, 0x1

    .line 356
    .local v4, bSameData:Z
    const/4 v7, 0x0

    .line 357
    .local v7, bisSrc:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 361
    .local v5, bisDest:Ljava/io/BufferedInputStream;
    const/16 v23, 0x0

    .line 362
    .local v23, position:I
    :try_start_96
    new-array v0, v9, [B

    move-object/from16 v25, v0

    .line 363
    .local v25, readSrcData:[B
    new-array v0, v9, [B

    move-object/from16 v24, v0

    .line 365
    .local v24, readDestData:[B
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a5
    .catchall {:try_start_96 .. :try_end_a5} :catchall_185
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a5} :catch_146

    .line 366
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .local v8, bisSrc:Ljava/io/BufferedInputStream;
    :try_start_a5
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_1c0
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ac} :catch_1c7

    .line 368
    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .local v6, bisDest:Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .local v19, i1:I
    :goto_ae
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_101

    if-eqz v4, :cond_101

    .line 370
    const/16 v27, 0x0

    :try_start_b8
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 371
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 373
    add-int v27, v9, v22

    add-int v23, v23, v27

    .line 375
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v8, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 376
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 378
    const/16 v20, 0x0

    .local v20, i2:I
    :goto_e2
    move/from16 v0, v20

    if-ge v0, v9, :cond_fe

    if-eqz v4, :cond_fe

    .line 379
    aget-byte v27, v25, v20

    aget-byte v28, v24, v20
    :try_end_ec
    .catchall {:try_start_b8 .. :try_end_ec} :catchall_1c3
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ec} :catch_1cb

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_fc

    const/4 v4, 0x1

    .line 378
    :goto_f3
    add-int/lit8 v20, v20, 0x1

    goto :goto_e2

    .line 339
    .end local v4           #bSameData:Z
    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v9           #buffSize:I
    .end local v19           #i1:I
    .end local v20           #i2:I
    .end local v21           #iCnt:I
    .end local v22           #offset:I
    .end local v23           #position:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    .end local v26           #tmp:I
    :cond_f6
    const/16 v9, 0x80

    goto :goto_7b

    .restart local v9       #buffSize:I
    .restart local v21       #iCnt:I
    .restart local v26       #tmp:I
    :cond_f9
    move/from16 v21, v26

    .line 344
    goto :goto_89

    .line 379
    .restart local v4       #bSameData:Z
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v19       #i1:I
    .restart local v20       #i2:I
    .restart local v22       #offset:I
    .restart local v23       #position:I
    .restart local v24       #readDestData:[B
    .restart local v25       #readSrcData:[B
    :cond_fc
    const/4 v4, 0x0

    goto :goto_f3

    .line 368
    :cond_fe
    add-int/lit8 v19, v19, 0x1

    goto :goto_ae

    .line 389
    .end local v20           #i2:I
    :cond_101
    if-eqz v8, :cond_106

    :try_start_103
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V

    .line 390
    :cond_106
    if-eqz v6, :cond_10b

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 391
    :cond_10b
    if-eqz v18, :cond_110

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 392
    :cond_110
    if-eqz v16, :cond_115

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_115} :catch_11f

    :cond_115
    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 399
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v19           #i1:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    :cond_117
    :goto_117
    move v2, v4

    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v3, v2

    .line 401
    .restart local v3       #Result:I
    goto/16 :goto_41

    .line 393
    .end local v3           #Result:I
    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    .restart local v19       #i1:I
    .restart local v24       #readDestData:[B
    .restart local v25       #readSrcData:[B
    :catch_11f
    move-exception v12

    .line 394
    .restart local v12       #e:Ljava/io/IOException;
    sget-boolean v27, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v27, :cond_140

    const-string v27, "ClipboardServiceEx"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "close : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_140
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 397
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_117

    .line 382
    .end local v12           #e:Ljava/io/IOException;
    .end local v19           #i1:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    :catch_146
    move-exception v12

    .line 383
    .restart local v12       #e:Ljava/io/IOException;
    :goto_147
    :try_start_147
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14a
    .catchall {:try_start_147 .. :try_end_14a} :catchall_185

    .line 384
    const/4 v4, 0x0

    .line 389
    if-eqz v7, :cond_150

    :try_start_14d
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 390
    :cond_150
    if-eqz v5, :cond_155

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 391
    :cond_155
    if-eqz v18, :cond_15a

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 392
    :cond_15a
    if-eqz v16, :cond_117

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_15f} :catch_160

    goto :goto_117

    .line 393
    :catch_160
    move-exception v12

    .line 394
    sget-boolean v27, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v27, :cond_181

    const-string v27, "ClipboardServiceEx"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "close : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_181
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_117

    .line 388
    .end local v12           #e:Ljava/io/IOException;
    :catchall_185
    move-exception v27

    .line 389
    :goto_186
    if-eqz v7, :cond_18b

    :try_start_188
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 390
    :cond_18b
    if-eqz v5, :cond_190

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 391
    :cond_190
    if-eqz v18, :cond_195

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 392
    :cond_195
    if-eqz v16, :cond_19a

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_19a} :catch_19b

    .line 396
    :cond_19a
    :goto_19a
    throw v27

    .line 393
    :catch_19b
    move-exception v12

    .line 394
    .restart local v12       #e:Ljava/io/IOException;
    sget-boolean v28, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v28, :cond_1bc

    const-string v28, "ClipboardServiceEx"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "close : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_1bc
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19a

    .line 388
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v12           #e:Ljava/io/IOException;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v24       #readDestData:[B
    .restart local v25       #readSrcData:[B
    :catchall_1c0
    move-exception v27

    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_186

    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v19       #i1:I
    :catchall_1c3
    move-exception v27

    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto :goto_186

    .line 382
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v19           #i1:I
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    :catch_1c7
    move-exception v12

    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto/16 :goto_147

    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v6       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v19       #i1:I
    :catch_1cb
    move-exception v12

    move-object v5, v6

    .end local v6           #bisDest:Ljava/io/BufferedInputStream;
    .restart local v5       #bisDest:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v7       #bisSrc:Ljava/io/BufferedInputStream;
    goto/16 :goto_147

    .line 302
    .end local v4           #bSameData:Z
    .end local v5           #bisDest:Ljava/io/BufferedInputStream;
    .end local v7           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v9           #buffSize:I
    .end local v14           #fileSize:I
    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .end local v19           #i1:I
    .end local v21           #iCnt:I
    .end local v22           #offset:I
    .end local v23           #position:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    .end local v26           #tmp:I
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    :catch_1d0
    move-exception v12

    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    goto/16 :goto_43
.end method

.method private compareFileSize(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 278
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, file1:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, file2:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    .line 282
    const/4 v2, 0x1

    .line 285
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method


# virtual methods
.method public GetBitmap()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetBitmapPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public GetHtmlUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 86
    .local v0, Result:Z
    if-eqz v0, :cond_a

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    if-nez v2, :cond_c

    :cond_a
    move v1, v0

    .line 102
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_b
    return v1

    .line 88
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_c
    packed-switch p1, :pswitch_data_24

    .end local p2
    :goto_f
    move v1, v0

    .line 102
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_b

    .line 91
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_11
    const/4 v0, 0x0

    .line 92
    goto :goto_f

    .line 94
    :pswitch_13
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p2
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetHtmlUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 95
    goto :goto_f

    .line 98
    .restart local p2
    :pswitch_22
    const/4 v0, 0x0

    goto :goto_f

    .line 88
    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_11
        :pswitch_13
        :pswitch_22
    .end packed-switch
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)Z
    .registers 3
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public SetBitmapPath(Ljava/lang/String;)Z
    .registers 7
    .parameter "FilePath"

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, Result:Z
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_c

    :cond_a
    move v1, v0

    .line 170
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_b
    return v1

    .line 157
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_c
    iget-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    if-eqz v3, :cond_15

    .line 158
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 159
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 161
    :cond_15
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 163
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, tempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 165
    const/4 v0, 0x1

    :cond_23
    :goto_23
    move v1, v0

    .line 170
    .restart local v1       #Result:I
    goto :goto_b

    .line 167
    .end local v1           #Result:I
    :cond_25
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_23

    const-string v3, "ClipboardServiceEx"

    const-string v4, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public SetBitmapPath(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "FilePath"
    .parameter "HtmlUrl"

    .prologue
    .line 185
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "ClipboardServiceEx"

    const-string v4, "SetBitmapPath( String FilePath , String HtmlUrl )"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_b
    const/4 v0, 0x0

    .line 188
    .local v0, Result:Z
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_17

    :cond_15
    move v1, v0

    .line 211
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_16
    return v1

    .line 191
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_17
    iget-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    if-eqz v3, :cond_20

    .line 192
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 193
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 195
    :cond_20
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 198
    if-eqz p2, :cond_48

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 199
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v3, :cond_46

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtmlUrl ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_46
    iput-object p2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 204
    :cond_48
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, tempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 206
    const/4 v0, 0x1

    :cond_54
    :goto_54
    move v1, v0

    .line 211
    .restart local v1       #Result:I
    goto :goto_16

    .line 208
    .end local v1           #Result:I
    :cond_56
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_54

    const-string v3, "ClipboardServiceEx"

    const-string v4, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 111
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .line 252
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "ClipboardServiceEx"

    const-string v5, "bitmap equals"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_b
    const/4 v0, 0x0

    .line 254
    .local v0, result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    move v1, v0

    .line 271
    .end local v0           #result:Z
    .local v1, result:I
    :goto_13
    return v1

    .line 257
    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_14
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-nez v4, :cond_1a

    move v1, v0

    .line 258
    .restart local v1       #result:I
    goto :goto_13

    .end local v1           #result:I
    :cond_1a
    move-object v3, p1

    .line 260
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 261
    .local v3, trgData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, trgBmp:Ljava/lang/String;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3d

    .line 264
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->CompareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 265
    const/4 v0, 0x1

    .line 266
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_3d

    const-string v4, "ClipboardServiceEx"

    const-string v5, "bitmap equals"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move v1, v0

    .line 271
    .restart local v1       #result:I
    goto :goto_13
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 6
    .parameter "source"

    .prologue
    .line 430
    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 431
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 432
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    .line 433
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v1, :cond_48

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataBitmap : readFormSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    .line 440
    :cond_48
    :goto_48
    return-void

    .line 436
    :catch_49
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_48

    const-string v1, "ClipboardServiceEx"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Bitmap class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_26

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 406
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "Bitmap write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 410
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValueUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 423
    return-void
.end method
