.class Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$3;
.super Ljava/lang/Object;
.source "ExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->onResume()V
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
    .line 132
    iput-object p1, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$3;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$3;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-set1(Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;Z)Z

    .line 136
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$3;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v0}, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->-wrap0(Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;)V

    .line 137
    iget-object v0, p0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl$3;->this$2:Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lmokee/externalviews/ExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/ExternalViewProviderService$Provider;

    invoke-virtual {v0}, Lmokee/externalviews/ExternalViewProviderService$Provider;->onResume()V

    .line 134
    return-void
.end method
