.class Lorg/mokee/platform/internal/BrokerableMKSystemService$1;
.super Landroid/os/Handler;
.source "BrokerableMKSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mokee/platform/internal/BrokerableMKSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;


# direct methods
.method constructor <init>(Lorg/mokee/platform/internal/BrokerableMKSystemService;)V
    .locals 0

    .prologue
    .line 161
    .local p1, "this$0":Lorg/mokee/platform/internal/BrokerableMKSystemService;, "Lorg/mokee/platform/internal/BrokerableMKSystemService<TT;>;"
    iput-object p1, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$1;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    invoke-static {}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unknown message"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lorg/mokee/platform/internal/BrokerableMKSystemService$1;->this$0:Lorg/mokee/platform/internal/BrokerableMKSystemService;

    invoke-virtual {v0}, Lorg/mokee/platform/internal/BrokerableMKSystemService;->tryConnecting()V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
