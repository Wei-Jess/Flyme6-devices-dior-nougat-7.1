.class final Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;
.super Ljava/lang/Object;
.source "MKSettings.java"

# interfaces
.implements Lmokee/providers/MKSettings$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/providers/MKSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput p1, p0, Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;->mMin:I

    .line 355
    iput p2, p0, Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;->mMax:I

    .line 353
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 361
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 362
    .local v1, "intValue":I
    iget v3, p0, Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;->mMin:I

    if-lt v1, v3, :cond_0

    iget v3, p0, Lmokee/providers/MKSettings$InclusiveIntegerRangeValidator;->mMax:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 363
    .end local v1    # "intValue":I
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method
