.class Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;
.super Lcom/qualcomm/qcrilhook/OemHookCallback;
.source "QtiRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/QtiRilInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmhCallProfileCallback"
.end annotation


# instance fields
.field mAppMessage:Landroid/os/Message;

.field mModemApnType:I

.field final synthetic this$0:Lcom/qti/internal/telephony/QtiRilInterface;


# direct methods
.method public constructor <init>(Lcom/qti/internal/telephony/QtiRilInterface;ILandroid/os/Message;)V
    .locals 0
    .param p2, "modemApnType"    # I
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qti/internal/telephony/QtiRilInterface;

    .line 157
    invoke-direct {p0, p3}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    .line 158
    iput-object p3, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    .line 159
    iput p2, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mModemApnType:I

    .line 160
    return-void
.end method


# virtual methods
.method public onOemHookResponse([BI)V
    .locals 6
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;>;"
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-static {v2}, Lcom/qti/internal/telephony/QtiRilInterface;->access$300(Lcom/qti/internal/telephony/QtiRilInterface;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    .local v0, "fakeResponse":Z
    if-eqz v0, :cond_0

    .line 170
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qti/internal/telephony/QtiRilInterface;

    const-string v3, "Getting fake omh profiles"

    invoke-static {v2, v3}, Lcom/qti/internal/telephony/QtiRilInterface;->access$400(Lcom/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qti/internal/telephony/QtiRilInterface;

    iget v3, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mModemApnType:I

    invoke-static {v2, v3}, Lcom/qti/internal/telephony/QtiRilInterface;->access$500(Lcom/qti/internal/telephony/QtiRilInterface;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    invoke-static {v2, v1, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 183
    :goto_0
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void

    .line 174
    :cond_0
    if-eqz p1, :cond_1

    .line 175
    const-string v2, "QtiRilInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOmhCallProfile: onOemHookResponse = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->this$0:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-static {v2, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->access$600(Lcom/qti/internal/telephony/QtiRilInterface;[B)Ljava/util/ArrayList;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    invoke-static {v2, v1, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;->mAppMessage:Landroid/os/Message;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "QCRIL_EVT_HOOK_GET_OMH_CALL_PROFILE failed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0
.end method
