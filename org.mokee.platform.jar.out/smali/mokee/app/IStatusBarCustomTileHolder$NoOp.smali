.class public Lmokee/app/IStatusBarCustomTileHolder$NoOp;
.super Ljava/lang/Object;
.source "IStatusBarCustomTileHolder.java"

# interfaces
.implements Lmokee/app/IStatusBarCustomTileHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/IStatusBarCustomTileHolder;
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

.method public get()Lmokee/app/StatusBarPanelCustomTile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
