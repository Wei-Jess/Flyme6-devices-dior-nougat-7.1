.class Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$1;
.super Ljava/lang/Object;
.source "LiveLockScreenServiceBroker.java"

# interfaces
.implements Lmokee/app/ILiveLockScreenManagerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/mokee/platform/internal/LiveLockScreenServiceBroker$1;->this$0:Lorg/mokee/platform/internal/LiveLockScreenServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelLiveLockScreen(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    return-void
.end method

.method public enqueueLiveLockScreen(Ljava/lang/String;ILmokee/app/LiveLockScreenInfo;[II)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "lls"    # Lmokee/app/LiveLockScreenInfo;
    .param p4, "idReceived"    # [I
    .param p5, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
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
    .line 91
    const/4 v0, 0x0

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
    .line 101
    const/4 v0, 0x0

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
    .line 107
    const/4 v0, 0x0

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
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public updateDefaultLiveLockScreen(Lmokee/app/LiveLockScreenInfo;)V
    .locals 0
    .param p1, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    return-void
.end method
