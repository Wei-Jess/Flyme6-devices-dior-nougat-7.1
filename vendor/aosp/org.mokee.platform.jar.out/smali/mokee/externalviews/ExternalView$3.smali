.class Lmokee/externalviews/ExternalView$3;
.super Ljava/lang/Object;
.source "ExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/ExternalView;->onActivityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/externalviews/ExternalView;


# direct methods
.method constructor <init>(Lmokee/externalviews/ExternalView;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/externalviews/ExternalView;

    .prologue
    .line 142
    iput-object p1, p0, Lmokee/externalviews/ExternalView$3;->this$0:Lmokee/externalviews/ExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lmokee/externalviews/ExternalView$3;->this$0:Lmokee/externalviews/ExternalView;

    iget-object v1, v1, Lmokee/externalviews/ExternalView;->mExternalViewProvider:Lmokee/externalviews/IExternalViewProvider;

    invoke-interface {v1}, Lmokee/externalviews/IExternalViewProvider;->onStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
