.class public Lmokee/app/ILiveLockScreenChangeListener$NoOp;
.super Ljava/lang/Object;
.source "ILiveLockScreenChangeListener.java"

# interfaces
.implements Lmokee/app/ILiveLockScreenChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/ILiveLockScreenChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLiveLockScreenChanged(Lmokee/app/LiveLockScreenInfo;)V
    .locals 0
    .param p1, "llsInfo"    # Lmokee/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method
