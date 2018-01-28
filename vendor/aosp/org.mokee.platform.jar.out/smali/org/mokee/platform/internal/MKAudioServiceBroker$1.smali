.class Lorg/mokee/platform/internal/MKAudioServiceBroker$1;
.super Lmokee/media/IMKAudioService$Stub;
.source "MKAudioServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/MKAudioServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/MKAudioServiceBroker;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/MKAudioServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/MKAudioServiceBroker;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker$1;->this$0:Lorg/mokee/platform/internal/MKAudioServiceBroker;

    invoke-direct {p0}, Lmokee/media/IMKAudioService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public listAudioSessions(I)Ljava/util/List;
    .locals 1
    .param p1, "streamType"    # I
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

    .prologue
    .line 98
    iget-object v0, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker$1;->this$0:Lorg/mokee/platform/internal/MKAudioServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKAudioServiceBroker;->-wrap0(Lorg/mokee/platform/internal/MKAudioServiceBroker;)V

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
