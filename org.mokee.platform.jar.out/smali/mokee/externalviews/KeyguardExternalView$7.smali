.class Lmokee/externalviews/KeyguardExternalView$7;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/KeyguardExternalView;->onKeyguardDismissed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/externalviews/KeyguardExternalView;


# direct methods
.method constructor <init>(Lmokee/externalviews/KeyguardExternalView;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/externalviews/KeyguardExternalView;

    .prologue
    .line 326
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalView$7;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalView$7;->this$0:Lmokee/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalView;->-get3(Lmokee/externalviews/KeyguardExternalView;)Lmokee/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    invoke-interface {v1}, Lmokee/externalviews/IKeyguardExternalViewProvider;->onKeyguardDismissed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
