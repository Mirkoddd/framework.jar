.class Lcom/android/internal/telephony/IccCard$2;
.super Landroid/os/Handler;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .registers 2
    .parameter

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .parameter "msg"

    .prologue
    .line 1081
    const/4 v12, 0x7

    .line 1085
    .local v12, serviceClassX:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v14, v14, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v14, :cond_40

    .line 1086
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Received message "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] while being destroyed. Ignoring."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_3f
    :goto_3f
    return-void

    .line 1091
    :cond_40
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleMessage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x6

    if-eq v14, v15, :cond_8b

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x4

    if-eq v14, v15, :cond_8b

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x8

    if-eq v14, v15, :cond_8b

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0xb

    if-eq v14, v15, :cond_8b

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x9

    if-eq v14, v15, :cond_8b

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_cc

    .line 1096
    :cond_8b
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit16 v14, v14, 0x3e8

    move-object/from16 v0, p1

    iput v14, v0, Landroid/os/Message;->what:I

    .line 1098
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 1099
    .local v8, msgBackup:Landroid/os/Message;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1100
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "backup handleMessage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v8, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/16 v15, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/IccCard;->simLockInfoRefresh(Landroid/os/Message;)V

    goto/16 :goto_3f

    .line 1105
    .end local v8           #msgBackup:Landroid/os/Message;
    :cond_cc
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x3e8

    if-le v14, v15, :cond_fd

    .line 1106
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    add-int/lit16 v14, v14, -0x3e8

    move-object/from16 v0, p1

    iput v14, v0, Landroid/os/Message;->what:I

    .line 1107
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "restore handleMessage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_fd
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_7f2

    .line 1520
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[IccCard] Unknown Event "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1111
    :sswitch_128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 1112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v14}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 1113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v15, "NOT_READY"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    .line 1123
    :sswitch_143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v15, "SC"

    const-string v16, ""

    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v15, v0, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v15, "FD"

    const-string v16, ""

    const/16 v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v15, v0, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_3f

    .line 1152
    :sswitch_199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v15, "SC"

    const-string v16, ""

    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v15, v0, v12, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_3f

    .line 1159
    :sswitch_1d2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1161
    .local v2, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_3f

    .line 1167
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_1e1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1169
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x5

    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_3f

    .line 1180
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_20d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1181
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v14, v2}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    .line 1182
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3f

    .line 1185
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_223
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1186
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v14, v2}, Lcom/android/internal/telephony/IccCard;->access$200(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_3f

    .line 1189
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_232
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1190
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v14, v2}, Lcom/android/internal/telephony/IccCard;->access$300(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    goto/16 :goto_3f

    .line 1194
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_241
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1195
    .restart local v2       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #calls: Lcom/android/internal/telephony/IccCard;->onQueryFacilitySimPerso(Landroid/os/AsyncResult;)V
    invoke-static {v14, v2}, Lcom/android/internal/telephony/IccCard;->access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccSimPersoLocked:Z
    invoke-static {v14}, Lcom/android/internal/telephony/IccCard;->access$500(Lcom/android/internal/telephony/IccCard;)Z

    move-result v14

    if-eqz v14, :cond_3f

    .line 1197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_3f

    .line 1201
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_26c
    const-string v14, "IccCard"

    const-string v15, "Event EVENT_CHANGE_FACILITY_LOCK_DONE Received"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1203
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_2dc

    .line 1204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z
    invoke-static {v15}, Lcom/android/internal/telephony/IccCard;->access$700(Lcom/android/internal/telephony/IccCard;)Z

    move-result v15

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$602(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/internal/telephony/IccCard;->mSimPinState:Z

    .line 1210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v14, v14, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v14, :cond_2bf

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccPinLocked= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$600(Lcom/android/internal/telephony/IccCard;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1213
    :cond_2bf
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mRequestSetPINLock:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$802(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1214
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1216
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3f

    .line 1219
    :cond_2dc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error change facility lock with exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    #setter for: Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;
    invoke-static {v15, v14}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_3f

    .line 1234
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_31d
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1235
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_389

    .line 1236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredSimPersoLocked:Z
    invoke-static {v15}, Lcom/android/internal/telephony/IccCard;->access$900(Lcom/android/internal/telephony/IccCard;)Z

    move-result v15

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccSimPersoLocked:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$502(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->mDesiredSimPersoLocked:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$902(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v14, v14, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v14, :cond_36a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_CHANGE_FACILITY_SIM_PERSO_DONE: mIccSimPersoLocked= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccSimPersoLocked:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$500(Lcom/android/internal/telephony/IccCard;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1240
    :cond_36a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x1

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/IccCard;->getSimLockInfo(II)V

    .line 1245
    :goto_374
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1247
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3f

    .line 1242
    :cond_389
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error change facility lock with exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_374

    .line 1252
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_3aa
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1254
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_41f

    .line 1255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/internal/telephony/IccCard;->mFdnState:Z

    .line 1256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z
    invoke-static {v15}, Lcom/android/internal/telephony/IccCard;->access$1100(Lcom/android/internal/telephony/IccCard;)Z

    move-result v15

    #setter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1002(Lcom/android/internal/telephony/IccCard;Z)Z

    .line 1257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-boolean v14, v14, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v14, :cond_3f6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$1000(Lcom/android/internal/telephony/IccCard;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V

    .line 1263
    :cond_3f6
    :goto_3f6
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1265
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1267
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.FDN_MODE_CHANGED"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1268
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3f

    .line 1260
    .end local v7           #intent:Landroid/content/Intent;
    :cond_41f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error change facility fdn with exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f6

    .line 1272
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_440
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1273
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_484

    .line 1274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in change sim password with exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #setter for: Lcom/android/internal/telephony/IccCard;->arForChangeToPUKState:Landroid/os/AsyncResult;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$102(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1281
    :cond_484
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1283
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3f

    .line 1286
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_499
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v15, "Received Event EVENT_ICC_STATUS_CHANGED"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/IccCard$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_3f

    .line 1290
    :sswitch_4b8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x0

    #calls: Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1200(Lcom/android/internal/telephony/IccCard;Z)V

    goto/16 :goto_3f

    .line 1293
    :sswitch_4c2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x1

    #calls: Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1200(Lcom/android/internal/telephony/IccCard;Z)V

    goto/16 :goto_3f

    .line 1297
    :sswitch_4cc
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object v2, v14

    check-cast v2, Landroid/os/AsyncResult;

    .line 1299
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_3f

    .line 1300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/android/internal/telephony/IccCard;->mPLMNwAct:Ljava/lang/String;
    invoke-static {v15, v14}, Lcom/android/internal/telephony/IccCard;->access$1302(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3f

    .line 1307
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_4ec
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object v2, v14

    check-cast v2, Landroid/os/AsyncResult;

    .line 1309
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_3f

    .line 1310
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/android/internal/telephony/IccCard;->mFPLMN:Ljava/lang/String;
    invoke-static {v15, v14}, Lcom/android/internal/telephony/IccCard;->access$1402(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1311
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_QUERY_FPLMN_DONE:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/IccCard;->mFPLMN:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$1400(Lcom/android/internal/telephony/IccCard;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1317
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_52e
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object v2, v14

    check-cast v2, Landroid/os/AsyncResult;

    .line 1319
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_3f

    .line 1320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    check-cast v14, [B

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/android/internal/telephony/IccCard;->mOPLMNwAct:Ljava/lang/String;
    invoke-static {v15, v14}, Lcom/android/internal/telephony/IccCard;->access$1502(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1321
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_QUERY_OPLMNWACT_DONE:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/telephony/IccCard;->mOPLMNwAct:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IccCard;->access$1500(Lcom/android/internal/telephony/IccCard;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1328
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_570
    const/4 v5, 0x0

    .line 1332
    .local v5, eccString:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #eccString:Ljava/lang/StringBuffer;
    const-string v14, ""

    invoke-direct {v5, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1336
    .restart local v5       #eccString:Ljava/lang/StringBuffer;
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    move-object v2, v14

    check-cast v2, Landroid/os/AsyncResult;

    .line 1338
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_5e4

    .line 1339
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v15, "EVENT_GET_ECC_DONE ar.exception"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z
    invoke-static {v14}, Lcom/android/internal/telephony/IccCard;->access$1600(Lcom/android/internal/telephony/IccCard;)Z

    move-result v14

    if-nez v14, :cond_5c3

    .line 1341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v14, v14, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v15, 0x6fb7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0xf

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const/4 v15, 0x1

    #setter for: Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1602(Lcom/android/internal/telephony/IccCard;Z)Z

    goto/16 :goto_3f

    .line 1344
    :cond_5c3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z
    invoke-static {v14}, Lcom/android/internal/telephony/IccCard;->access$1600(Lcom/android/internal/telephony/IccCard;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3f

    .line 1346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    const-string v15, ""

    #setter for: Lcom/android/internal/telephony/IccCard;->mEmergencyNumber:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1702(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers()V

    goto/16 :goto_3f

    .line 1355
    :cond_5e4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    #getter for: Lcom/android/internal/telephony/IccCard;->mRead2GEcc:Z
    invoke-static {v14}, Lcom/android/internal/telephony/IccCard;->access$1600(Lcom/android/internal/telephony/IccCard;)Z

    move-result v14

    if-nez v14, :cond_655

    .line 1356
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    move-object v4, v14

    check-cast v4, Ljava/util/ArrayList;

    .line 1358
    .local v4, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, s:I
    :goto_5fa
    if-ge v6, v11, :cond_686

    .line 1359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "r "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1362
    .local v10, record:[B
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-static {v10, v14, v15}, Lcom/android/internal/telephony/IccCard;->bcdToString([BII)Ljava/lang/String;

    move-result-object v13

    .line 1364
    .local v13, tempEccString:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_652

    .line 1365
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_63c

    .line 1366
    const/16 v14, 0x2c

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1367
    :cond_63c
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1370
    const/16 v14, 0x2f

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1371
    array-length v14, v10

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, v10, v14

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1358
    :cond_652
    add-int/lit8 v6, v6, 0x1

    goto :goto_5fa

    .line 1393
    .end local v4           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v6           #i:I
    .end local v10           #record:[B
    .end local v11           #s:I
    .end local v13           #tempEccString:Ljava/lang/String;
    :cond_655
    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    move-object v3, v14

    check-cast v3, [B

    .line 1395
    .local v3, data:[B
    array-length v14, v3

    div-int/lit8 v9, v14, 0x3

    .line 1397
    .local v9, numOfEcc:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_660
    if-ge v6, v9, :cond_686

    .line 1398
    mul-int/lit8 v14, v6, 0x3

    const/4 v15, 0x3

    invoke-static {v3, v14, v15}, Lcom/android/internal/telephony/IccCard;->bcdToString([BII)Ljava/lang/String;

    move-result-object v13

    .line 1400
    .restart local v13       #tempEccString:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_683

    .line 1401
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_680

    .line 1402
    const/16 v14, 0x2c

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1403
    :cond_680
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1397
    :cond_683
    add-int/lit8 v6, v6, 0x1

    goto :goto_660

    .line 1423
    .end local v3           #data:[B
    .end local v9           #numOfEcc:I
    .end local v13           #tempEccString:Ljava/lang/String;
    :cond_686
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    #setter for: Lcom/android/internal/telephony/IccCard;->mEmergencyNumber:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/android/internal/telephony/IccCard;->access$1702(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)Ljava/lang/String;

    .line 1424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->setEmergencyNumbers()V

    goto/16 :goto_3f

    .line 1433
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v5           #eccString:Ljava/lang/StringBuffer;
    .end local v6           #i:I
    :sswitch_69e
    const-string v14, "IccCard"

    const-string v15, "EVENT_SIM_LOCK_INFO_DONE"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1435
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_6cd

    .line 1436
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in get SIM LOCK INFO"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1439
    :cond_6cd
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v15, v14, Lcom/android/internal/telephony/IccCard;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/SimLockInfoResult;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/SimLockInfoResult;

    invoke-virtual {v15, v14}, Lcom/android/internal/telephony/SimLockInfoResult;->setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;)V

    goto/16 :goto_3f

    .line 1464
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_6dc
    const-string v14, "IccCard"

    const-string v15, "EVENT_SIM_PIN_LOCK_INFO_DONE"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1466
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_734

    .line 1467
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in get SIM LOCK INFO"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :goto_709
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v15, v14, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v16, 0x1

    const/16 v17, 0x9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v0, v14, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x12

    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v15, v0, v1, v14}, Lcom/android/internal/telephony/CommandsInterface;->getSIMLockInfo(IILandroid/os/Message;)V

    goto/16 :goto_3f

    .line 1469
    :cond_734
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v15, v14, Lcom/android/internal/telephony/IccCard;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/SimLockInfoResult;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/SimLockInfoResult;

    invoke-virtual {v15, v14}, Lcom/android/internal/telephony/SimLockInfoResult;->setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;)V

    goto :goto_709

    .line 1482
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_742
    const-string v14, "IccCard"

    const-string v15, "EVENT_SIM_PIN2_LOCK_INFO_DONE"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1484
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_784

    .line 1485
    const-string v14, "IccCard"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in get SIM LOCK INFO"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :goto_76f
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-static {v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v14

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v15, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1491
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3f

    .line 1487
    :cond_784
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v15, v14, Lcom/android/internal/telephony/IccCard;->mResultSIMLOCKINFO:Lcom/android/internal/telephony/SimLockInfoResult;

    iget-object v14, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/SimLockInfoResult;

    invoke-virtual {v15, v14}, Lcom/android/internal/telephony/SimLockInfoResult;->setLockInfoResult(Lcom/android/internal/telephony/SimLockInfoResult;)V

    goto :goto_76f

    .line 1494
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_792
    const-string v14, "IccCard"

    const-string v15, "EVENT_SIM_PIN_LOCK_INFO_REFRESH_DONE"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1496
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v14, :cond_3f

    .line 1497
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/IccCard$2;->handleMessage(Landroid/os/Message;)V

    .line 1498
    const/4 v14, 0x0

    iput-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    goto/16 :goto_3f

    .line 1508
    .end local v2           #ar:Landroid/os/AsyncResult;
    :sswitch_7b1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1509
    .restart local v2       #ar:Landroid/os/AsyncResult;
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_7db

    .line 1510
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/IccCard$2;->this$0:Lcom/android/internal/telephony/IccCard;

    iget-object v14, v14, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error in SIM access with exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_7db
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    iget-object v15, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1515
    iget-object v14, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3f

    .line 1109
    nop

    :sswitch_data_7f2
    .sparse-switch
        0x1 -> :sswitch_199
        0x2 -> :sswitch_1d2
        0x3 -> :sswitch_128
        0x4 -> :sswitch_1e1
        0x5 -> :sswitch_20d
        0x6 -> :sswitch_143
        0x7 -> :sswitch_223
        0x8 -> :sswitch_26c
        0x9 -> :sswitch_440
        0xa -> :sswitch_232
        0xb -> :sswitch_3aa
        0xc -> :sswitch_499
        0xd -> :sswitch_4b8
        0xe -> :sswitch_4c2
        0xf -> :sswitch_570
        0x10 -> :sswitch_69e
        0x11 -> :sswitch_6dc
        0x12 -> :sswitch_742
        0x13 -> :sswitch_792
        0x14 -> :sswitch_7b1
        0x15 -> :sswitch_7b1
        0x16 -> :sswitch_7b1
        0x17 -> :sswitch_7b1
        0x72 -> :sswitch_241
        0x73 -> :sswitch_31d
        0x74 -> :sswitch_4cc
        0x75 -> :sswitch_4ec
        0x76 -> :sswitch_52e
    .end sparse-switch
.end method
