.class Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;
.super Ljava/lang/Object;
.source "KeyguardExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->alterWindow(IIIIZLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

.field final synthetic val$clipRect:Landroid/graphics/Rect;

.field final synthetic val$height:I

.field final synthetic val$visible:Z

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;IIIIZLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$2"    # Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;
    .param p2, "val$x"    # I
    .param p3, "val$y"    # I
    .param p4, "val$width"    # I
    .param p5, "val$height"    # I
    .param p6, "val$visible"    # Z
    .param p7, "val$clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 245
    iput-object p1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iput p2, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$x:I

    iput p3, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$y:I

    iput p4, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$width:I

    iput p5, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$height:I

    iput-boolean p6, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$visible:Z

    iput-object p7, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$clipRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 248
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->-get0(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 249
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->-get0(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$y:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 250
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->-get0(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$width:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 251
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->-get0(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$height:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 255
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iget-boolean v2, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$visible:Z

    invoke-static {v1, v2}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->-set0(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;Z)Z

    .line 257
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->-wrap0(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V

    .line 259
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->val$clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 264
    :cond_0
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 265
    iget-object v1, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iget-object v1, v1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;

    iget-object v1, v1, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider;->this$0:Lmokee/externalviews/KeyguardExternalViewProviderService;

    invoke-static {v1}, Lmokee/externalviews/KeyguardExternalViewProviderService;->-get2(Lmokee/externalviews/KeyguardExternalViewProviderService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v2}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->-get1(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$9;->this$2:Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-static {v3}, Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->-get0(Lmokee/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :cond_1
    return-void
.end method
