.class final Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;
.super Lmokee/app/ILiveLockScreenManager$Stub;
.source "LiveLockScreenServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;


# direct methods
.method private constructor <init>(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-direct {p0}, Lmokee/app/ILiveLockScreenManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    .prologue
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;-><init>(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)V

    return-void
.end method


# virtual methods
.method public cancelLiveLockScreen(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/app/ILiveLockScreenManagerProvider;

    invoke-interface {v0, p1, p2, p3}, Lmokee/app/ILiveLockScreenManagerProvider;->cancelLiveLockScreen(Ljava/lang/String;II)V

    .line 131
    return-void
.end method

.method public enqueueLiveLockScreen(Ljava/lang/String;ILmokee/app/LiveLockScreenInfo;[II)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "lls"    # Lmokee/app/LiveLockScreenInfo;
    .param p4, "idReceived"    # [I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/app/ILiveLockScreenManagerProvider;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lmokee/app/ILiveLockScreenManagerProvider;->enqueueLiveLockScreen(Ljava/lang/String;ILmokee/app/LiveLockScreenInfo;[II)V

    .line 126
    return-void
.end method

.method public getCurrentLiveLockScreen()Lmokee/app/LiveLockScreenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/app/ILiveLockScreenManagerProvider;

    invoke-interface {v0}, Lmokee/app/ILiveLockScreenManagerProvider;->getCurrentLiveLockScreen()Lmokee/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLiveLockScreen()Lmokee/app/LiveLockScreenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-wrap1(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)V

    .line 143
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-wrap0(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)Lmokee/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLiveLockScreenEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/app/ILiveLockScreenManagerProvider;

    invoke-interface {v0}, Lmokee/app/ILiveLockScreenManagerProvider;->getLiveLockScreenEnabled()Z

    move-result v0

    return v0
.end method

.method public registerChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z
    .locals 2
    .param p1, "listener"    # Lmokee/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmokee/app/ILiveLockScreenManagerProvider;

    invoke-interface {v1, p1}, Lmokee/app/ILiveLockScreenManagerProvider;->registerChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z

    move-result v0

    .line 167
    .local v0, "registered":Z
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-get0(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 170
    :cond_0
    return v0
.end method

.method public setDefaultLiveLockScreen(Lmokee/app/LiveLockScreenInfo;)V
    .locals 1
    .param p1, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-wrap1(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)V

    .line 149
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0, p1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-wrap2(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;Lmokee/app/LiveLockScreenInfo;)V

    .line 147
    return-void
.end method

.method public setLiveLockScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-wrap1(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)V

    .line 155
    iget-object v0, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0, p1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-wrap3(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;Z)V

    .line 153
    return-void
.end method

.method public unregisterChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z
    .locals 2
    .param p1, "listener"    # Lmokee/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lmokee/app/ILiveLockScreenManagerProvider;

    invoke-interface {v1, p1}, Lmokee/app/ILiveLockScreenManagerProvider;->unregisterChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z

    move-result v0

    .line 177
    .local v0, "unregistered":Z
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v1}, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;->-get0(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 180
    :cond_0
    return v0
.end method
