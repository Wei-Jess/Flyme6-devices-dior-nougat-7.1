.class public interface abstract Lmokee/themes/IThemeChangeListener;
.super Ljava/lang/Object;
.source "IThemeChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/themes/IThemeChangeListener$NoOp;,
        Lmokee/themes/IThemeChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFinish(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProgress(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
