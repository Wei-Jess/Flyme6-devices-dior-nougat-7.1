.class Lmokee/externalviews/ExternalView$2;
.super Ljava/lang/Object;
.source "ExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/ExternalView;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/externalviews/ExternalView;

.field final synthetic val$clipRect:Landroid/graphics/Rect;

.field final synthetic val$height:I

.field final synthetic val$visible:Z

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lmokee/externalviews/ExternalView;IIIIZLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$0"    # Lmokee/externalviews/ExternalView;
    .param p2, "val$x"    # I
    .param p3, "val$y"    # I
    .param p4, "val$width"    # I
    .param p5, "val$height"    # I
    .param p6, "val$visible"    # Z
    .param p7, "val$clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 121
    iput-object p1, p0, Lmokee/externalviews/ExternalView$2;->this$0:Lmokee/externalviews/ExternalView;

    iput p2, p0, Lmokee/externalviews/ExternalView$2;->val$x:I

    iput p3, p0, Lmokee/externalviews/ExternalView$2;->val$y:I

    iput p4, p0, Lmokee/externalviews/ExternalView$2;->val$width:I

    iput p5, p0, Lmokee/externalviews/ExternalView$2;->val$height:I

    iput-boolean p6, p0, Lmokee/externalviews/ExternalView$2;->val$visible:Z

    iput-object p7, p0, Lmokee/externalviews/ExternalView$2;->val$clipRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lmokee/externalviews/ExternalView$2;->this$0:Lmokee/externalviews/ExternalView;

    iget-object v0, v0, Lmokee/externalviews/ExternalView;->mExternalViewProvider:Lmokee/externalviews/IExternalViewProvider;

    iget v1, p0, Lmokee/externalviews/ExternalView$2;->val$x:I

    iget v2, p0, Lmokee/externalviews/ExternalView$2;->val$y:I

    iget v3, p0, Lmokee/externalviews/ExternalView$2;->val$width:I

    iget v4, p0, Lmokee/externalviews/ExternalView$2;->val$height:I

    iget-boolean v5, p0, Lmokee/externalviews/ExternalView$2;->val$visible:Z

    .line 126
    iget-object v6, p0, Lmokee/externalviews/ExternalView$2;->val$clipRect:Landroid/graphics/Rect;

    .line 125
    invoke-interface/range {v0 .. v6}, Lmokee/externalviews/IExternalViewProvider;->alterWindow(IIIIZLandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
