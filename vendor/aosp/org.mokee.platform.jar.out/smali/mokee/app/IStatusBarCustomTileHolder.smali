.class public interface abstract Lmokee/app/IStatusBarCustomTileHolder;
.super Ljava/lang/Object;
.source "IStatusBarCustomTileHolder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/IStatusBarCustomTileHolder$NoOp;,
        Lmokee/app/IStatusBarCustomTileHolder$Stub;
    }
.end annotation


# virtual methods
.method public abstract get()Lmokee/app/StatusBarPanelCustomTile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
