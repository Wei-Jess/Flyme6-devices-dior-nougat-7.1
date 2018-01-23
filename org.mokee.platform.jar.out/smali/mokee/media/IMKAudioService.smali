.class public interface abstract Lmokee/media/IMKAudioService;
.super Ljava/lang/Object;
.source "IMKAudioService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/media/IMKAudioService$NoOp;,
        Lmokee/media/IMKAudioService$Stub;
    }
.end annotation


# virtual methods
.method public abstract listAudioSessions(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lmokee/media/AudioSessionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
