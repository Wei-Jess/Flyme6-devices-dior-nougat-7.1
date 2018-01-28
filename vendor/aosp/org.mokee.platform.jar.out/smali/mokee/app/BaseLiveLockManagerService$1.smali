.class Lmokee/app/BaseLiveLockManagerService$1;
.super Lmokee/app/ILiveLockScreenManagerProvider$Stub;
.source "BaseLiveLockManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/BaseLiveLockManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/app/BaseLiveLockManagerService;


# direct methods
.method constructor <init>(Lmokee/app/BaseLiveLockManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/app/BaseLiveLockManagerService;

    .prologue
    .line 179
    iput-object p1, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-direct {p0}, Lmokee/app/ILiveLockScreenManagerProvider$Stub;-><init>()V

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
    .line 191
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lmokee/app/BaseLiveLockManagerService;->enforceAccessPermission()V

    .line 192
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lmokee/app/BaseLiveLockManagerService;->cancelLiveLockScreen(Ljava/lang/String;II)V

    .line 190
    return-void
.end method

.method public enqueueLiveLockScreen(Ljava/lang/String;ILmokee/app/LiveLockScreenInfo;[II)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;
    .param p4, "idReceived"    # [I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lmokee/app/BaseLiveLockManagerService;->enforceAccessPermission()V

    .line 184
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0, p1, p3}, Lmokee/app/BaseLiveLockManagerService;->enforceSamePackageOrSystem(Ljava/lang/String;Lmokee/app/LiveLockScreenInfo;)V

    .line 185
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmokee/app/BaseLiveLockManagerService;->enqueueLiveLockScreen(Ljava/lang/String;ILmokee/app/LiveLockScreenInfo;[II)V

    .line 182
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
    .line 197
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lmokee/app/BaseLiveLockManagerService;->enforceAccessPermission()V

    .line 198
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lmokee/app/BaseLiveLockManagerService;->getCurrentLiveLockScreen()Lmokee/app/LiveLockScreenInfo;

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
    .line 209
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lmokee/app/BaseLiveLockManagerService;->enforceAccessPermission()V

    .line 210
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lmokee/app/BaseLiveLockManagerService;->getLiveLockScreenEnabled()Z

    move-result v0

    return v0
.end method

.method public registerChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lmokee/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lmokee/app/BaseLiveLockManagerService;->enforcePrivateAccessPermission()V

    .line 217
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0, p1}, Lmokee/app/BaseLiveLockManagerService;->registerChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z

    move-result v0

    return v0
.end method

.method public unregisterChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lmokee/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lmokee/app/BaseLiveLockManagerService;->enforcePrivateAccessPermission()V

    .line 224
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0, p1}, Lmokee/app/BaseLiveLockManagerService;->unregisterChangeListener(Lmokee/app/ILiveLockScreenChangeListener;)Z

    move-result v0

    return v0
.end method

.method public updateDefaultLiveLockScreen(Lmokee/app/LiveLockScreenInfo;)V
    .locals 1
    .param p1, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0}, Lmokee/app/BaseLiveLockManagerService;->enforcePrivateAccessPermission()V

    .line 204
    iget-object v0, p0, Lmokee/app/BaseLiveLockManagerService$1;->this$0:Lmokee/app/BaseLiveLockManagerService;

    invoke-virtual {v0, p1}, Lmokee/app/BaseLiveLockManagerService;->updateDefaultLiveLockScreen(Lmokee/app/LiveLockScreenInfo;)V

    .line 202
    return-void
.end method
