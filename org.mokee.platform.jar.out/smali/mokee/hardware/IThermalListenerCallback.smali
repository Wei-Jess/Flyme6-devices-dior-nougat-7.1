.class public interface abstract Lmokee/hardware/IThermalListenerCallback;
.super Ljava/lang/Object;
.source "IThermalListenerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/hardware/IThermalListenerCallback$NoOp;,
        Lmokee/hardware/IThermalListenerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onThermalChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
