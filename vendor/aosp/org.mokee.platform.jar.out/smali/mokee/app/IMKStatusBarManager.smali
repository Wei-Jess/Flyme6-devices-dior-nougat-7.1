.class public interface abstract Lmokee/app/IMKStatusBarManager;
.super Ljava/lang/Object;
.source "IMKStatusBarManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/IMKStatusBarManager$NoOp;,
        Lmokee/app/IMKStatusBarManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILmokee/app/CustomTile;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerListener(Lmokee/app/ICustomTileListener;Landroid/content/ComponentName;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeCustomTileFromListener(Lmokee/app/ICustomTileListener;Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lmokee/app/ICustomTileListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
