.class public interface abstract Lmokee/app/ILiveLockScreenChangeListener;
.super Ljava/lang/Object;
.source "ILiveLockScreenChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/ILiveLockScreenChangeListener$NoOp;,
        Lmokee/app/ILiveLockScreenChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLiveLockScreenChanged(Lmokee/app/LiveLockScreenInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
