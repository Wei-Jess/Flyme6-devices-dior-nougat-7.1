.class Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$6;
.super Ljava/lang/Object;
.source "ExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->onDetach()V
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
    .line 166
    iput-object p1, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$6;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$6;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/ExternalViewProviderService$Provider;

    iget-object v0, v0, Lmokee/externalviews/ExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/ExternalViewProviderService;

    invoke-static {v0}, Lmokee/externalviews/ExternalViewProviderService;->-get1(Lmokee/externalviews/ExternalViewProviderService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$6;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-get1(Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$6;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/ExternalViewProviderService$Provider;

    invoke-virtual {v0}, Lmokee/externalviews/ExternalViewProviderService$Provider;->onDetach()V

    .line 168
    return-void
.end method
