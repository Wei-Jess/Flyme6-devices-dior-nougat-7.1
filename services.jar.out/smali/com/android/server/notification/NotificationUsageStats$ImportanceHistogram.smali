.class Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImportanceHistogram"
.end annotation


# static fields
.field private static final IMPORTANCE_NAMES:[Ljava/lang/String;

.field private static final NUM_IMPORTANCES:I = 0x7


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCount:[I

.field private final mCounterNames:[Ljava/lang/String;

.field private final mPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 706
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "min"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "very-low"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "low"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "default"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "high"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "max"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 705
    sput-object v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->IMPORTANCE_NAMES:[Ljava/lang/String;

    .line 702
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x7

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mContext:Landroid/content/Context;

    .line 714
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 715
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    .line 716
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    .line 717
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->IMPORTANCE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_0
    return-void
.end method


# virtual methods
.method increment(I)V
    .locals 2
    .param p1, "imp"    # I

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 724
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 722
    return-void
.end method

.method maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 4
    .param p1, "prev"    # Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .prologue
    .line 728
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 729
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v2, v2, v0

    iget-object v3, p1, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v3, v3, v0

    sub-int v1, v2, v3

    .line 730
    .local v1, "value":I
    if-lez v1, :cond_0

    .line 731
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCounterNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 728
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    .end local v1    # "value":I
    :cond_1
    return-void
.end method

.method public maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 3
    .param p1, "dump"    # Lorg/json/JSONObject;
    .param p2, "prev"    # Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    .local v1, "output":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 752
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 753
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 754
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    :cond_1
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V
    .locals 3
    .param p1, "that"    # Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .prologue
    .line 737
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    iget-object v2, p1, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    :cond_0
    return-void
.end method
