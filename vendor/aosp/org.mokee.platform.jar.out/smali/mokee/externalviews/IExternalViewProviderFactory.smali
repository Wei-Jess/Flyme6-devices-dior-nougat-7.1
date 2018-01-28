.class public interface abstract Lmokee/externalviews/IExternalViewProviderFactory;
.super Ljava/lang/Object;
.source "IExternalViewProviderFactory.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/externalviews/IExternalViewProviderFactory$NoOp;,
        Lmokee/externalviews/IExternalViewProviderFactory$Stub;
    }
.end annotation


# virtual methods
.method public abstract createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
