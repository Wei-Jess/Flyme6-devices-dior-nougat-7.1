.class Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$1;
.super Ljava/lang/Object;
.source "ExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->onAttach(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;


# direct methods
.method constructor <init>(Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V
    .locals 0
    .param p1, "this$2"    # Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    .prologue
    .line 111
    iput-object p1, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$1;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$1;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/ExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/ExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/ExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/ExternalViewProviderService;->-get1(Lmokee/externalviews/ExternalViewProviderService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$1;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get1(Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$1;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v2}, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get0(Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$1;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/ExternalViewProviderService$Provider;

    invoke-virtual {v0}, Lmokee/externalviews/ExternalViewProviderService$Provider;->onAttach()V

    .line 113
    return-void
.end method
