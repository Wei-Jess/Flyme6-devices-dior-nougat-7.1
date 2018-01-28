.class final Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;
.super Lmokee/media/IMKAudioService$Stub;
.source "MKAudioServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/MKAudioServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/MKAudioServiceBroker;


# direct methods
.method private constructor <init>(Lorg/mokee/platform/internal/MKAudioServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/MKAudioServiceBroker;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/MKAudioServiceBroker;

    invoke-direct {p0}, Lmokee/media/IMKAudioService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mokee/platform/internal/MKAudioServiceBroker;Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mokee/platform/internal/MKAudioServiceBroker;

    .prologue
    invoke-direct {p0, p1}, Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;-><init>(Lorg/mokee/platform/internal/MKAudioServiceBroker;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 112
    iget-object v4, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/MKAudioServiceBroker;

    invoke-static {v4}, Lorg/mokee/platform/internal/MKAudioServiceBroker;->-get0(Lorg/mokee/platform/internal/MKAudioServiceBroker;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "android.permission.DUMP"

    const-string/jumbo v6, "MKAudioServiceBroker"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 115
    const-string/jumbo v4, "MKAudio Service State:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;->listAudioSessions(I)Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, "sessions":Ljava/util/List;, "Ljava/util/List<Lmokee/media/AudioSessionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 119
    const-string/jumbo v4, "  Audio sessions:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmokee/media/AudioSessionInfo;

    .line 121
    .local v1, "info":Lmokee/media/AudioSessionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lmokee/media/AudioSessionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v1    # "info":Lmokee/media/AudioSessionInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    .end local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lmokee/media/AudioSessionInfo;>;"
    :catch_0
    move-exception v0

    .line 111
    :cond_0
    :goto_1
    return-void

    .line 124
    .restart local v3    # "sessions":Ljava/util/List;, "Ljava/util/List<Lmokee/media/AudioSessionInfo;>;"
    :cond_1
    const-string/jumbo v4, "  No active audio sessions"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

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
    .line 106
    iget-object v0, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/MKAudioServiceBroker;

    invoke-static {v0}, Lorg/mokee/platform/internal/MKAudioServiceBroker;->-wrap0(Lorg/mokee/platform/internal/MKAudioServiceBroker;)V

    .line 107
    iget-object v0, p0, Lorg/mokee/platform/internal/MKAudioServiceBroker$BinderService;->this$0:Lorg/mokee/platform/internal/MKAudioServiceBroker;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/MKAudioServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmokee/media/IMKAudioService;

    invoke-interface {v0, p1}, Lmokee/media/IMKAudioService;->listAudioSessions(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
