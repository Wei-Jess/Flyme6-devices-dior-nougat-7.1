.class Lorg/mokee/platform/internal/MKTelephonyManagerService$1;
.super Lmokee/app/IMKTelephonyManager$Stub;
.source "MKTelephonyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/MKTelephonyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/MKTelephonyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/MKTelephonyManagerService;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-direct {p0}, Lmokee/app/IMKTelephonyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubInformation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap5(Lorg/mokee/platform/internal/MKTelephonyManagerService;)V

    .line 56
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap3(Lorg/mokee/platform/internal/MKTelephonyManagerService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDataConnectionEnabled()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap5(Lorg/mokee/platform/internal/MKTelephonyManagerService;)V

    .line 120
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap0(Lorg/mokee/platform/internal/MKTelephonyManagerService;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectionSelectedOnSub(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap5(Lorg/mokee/platform/internal/MKTelephonyManagerService;)V

    .line 106
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap1(Lorg/mokee/platform/internal/MKTelephonyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public isSubActive(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap5(Lorg/mokee/platform/internal/MKTelephonyManagerService;)V

    .line 72
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap2(Lorg/mokee/platform/internal/MKTelephonyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public setDataConnectionSelectedOnSub(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap4(Lorg/mokee/platform/internal/MKTelephonyManagerService;)V

    .line 145
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap6(Lorg/mokee/platform/internal/MKTelephonyManagerService;I)V

    .line 143
    return-void
.end method

.method public setDataConnectionState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap4(Lorg/mokee/platform/internal/MKTelephonyManagerService;)V

    .line 131
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap7(Lorg/mokee/platform/internal/MKTelephonyManagerService;Z)V

    .line 129
    return-void
.end method

.method public setDefaultPhoneSub(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap4(Lorg/mokee/platform/internal/MKTelephonyManagerService;)V

    .line 160
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap8(Lorg/mokee/platform/internal/MKTelephonyManagerService;I)V

    .line 158
    return-void
.end method

.method public setDefaultSmsSub(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap4(Lorg/mokee/platform/internal/MKTelephonyManagerService;)V

    .line 175
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0, p1}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap9(Lorg/mokee/platform/internal/MKTelephonyManagerService;I)V

    .line 173
    return-void
.end method

.method public setSubState(IZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "state"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap4(Lorg/mokee/platform/internal/MKTelephonyManagerService;)V

    .line 88
    iget-object v0, p0, Lorg/mokee/platform/internal/MKTelephonyManagerService$1;->this$0:Lorg/mokee/platform/internal/MKTelephonyManagerService;

    invoke-static {v0, p1, p2}, Lorg/mokee/platform/internal/MKTelephonyManagerService;->-wrap10(Lorg/mokee/platform/internal/MKTelephonyManagerService;IZ)V

    .line 86
    return-void
.end method
