.class public Lmokee/app/ICustomTileListener$NoOp;
.super Ljava/lang/Object;
.source "ICustomTileListener.java"

# interfaces
.implements Lmokee/app/ICustomTileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/ICustomTileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCustomTilePosted(Lmokee/app/IStatusBarCustomTileHolder;)V
    .locals 0
    .param p1, "customTileHolder"    # Lmokee/app/IStatusBarCustomTileHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method

.method public onCustomTileRemoved(Lmokee/app/IStatusBarCustomTileHolder;)V
    .locals 0
    .param p1, "customTileHolder"    # Lmokee/app/IStatusBarCustomTileHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    return-void
.end method

.method public onListenerConnected()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    return-void
.end method
