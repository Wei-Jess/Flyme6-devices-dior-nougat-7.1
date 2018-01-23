.class public Landroid/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongArray;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    .line 56
    :goto_0
    iput v1, p0, Landroid/util/LongArray;->mSize:I

    .line 50
    return-void

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Landroid/util/LongArray;->mValues:[J

    goto :goto_0
.end method

.method private constructor <init>([JI)V
    .locals 3
    .param p1, "array"    # [J
    .param p2, "size"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    .line 37
    array-length v0, p1

    const-string/jumbo v1, "size"

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 35
    return-void
.end method

.method private checkBounds(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 215
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/util/LongArray;->mSize:I

    if-gt v0, p1, :cond_1

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 214
    :cond_1
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 7
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x0

    .line 130
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    .line 131
    .local v0, "currentSize":I
    add-int v1, v0, p1

    .line 132
    .local v1, "minCapacity":I
    iget-object v5, p0, Landroid/util/LongArray;->mValues:[J

    array-length v5, v5

    if-lt v1, v5, :cond_0

    .line 133
    const/4 v5, 0x6

    if-ge v0, v5, :cond_1

    .line 134
    const/16 v5, 0xc

    .line 133
    :goto_0
    add-int v4, v0, v5

    .line 135
    .local v4, "targetCap":I
    if-le v4, v1, :cond_2

    move v2, v4

    .line 136
    .local v2, "newCapacity":I
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v3

    .line 137
    .local v3, "newValues":[J
    iget-object v5, p0, Landroid/util/LongArray;->mValues:[J

    invoke-static {v5, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 138
    iput-object v3, p0, Landroid/util/LongArray;->mValues:[J

    .line 129
    .end local v2    # "newCapacity":I
    .end local v3    # "newValues":[J
    .end local v4    # "targetCap":I
    :cond_0
    return-void

    .line 134
    :cond_1
    shr-int/lit8 v5, v0, 0x1

    goto :goto_0

    .restart local v4    # "targetCap":I
    :cond_2
    move v2, v1

    .line 135
    goto :goto_1
.end method

.method public static fromArray([JI)Landroid/util/LongArray;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "size"    # I

    .prologue
    .line 70
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v0}, Landroid/util/LongArray;->wrap([J)Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([J)Landroid/util/LongArray;
    .locals 2
    .param p0, "array"    # [J

    .prologue
    .line 63
    new-instance v0, Landroid/util/LongArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/LongArray;-><init>([JI)V

    return-object v0
.end method


# virtual methods
.method public add(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 102
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 103
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    sub-int v0, v1, p1

    .line 104
    .local v0, "rightSegment":I
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LongArray;->mSize:I

    .line 105
    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    .line 107
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 112
    :cond_0
    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v1, p1

    .line 101
    return-void
.end method

.method public add(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 92
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LongArray;->add(IJ)V

    .line 91
    return-void
.end method

.method public addAll(Landroid/util/LongArray;)V
    .locals 5
    .param p1, "values"    # Landroid/util/LongArray;

    .prologue
    .line 119
    iget v0, p1, Landroid/util/LongArray;->mSize:I

    .line 120
    .local v0, "count":I
    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 122
    iget-object v1, p1, Landroid/util/LongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongArray;->mSize:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 123
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/LongArray;->mSize:I

    .line 118
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 145
    return-void
.end method

.method public clone()Landroid/util/LongArray;
    .locals 4

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, "clone":Landroid/util/LongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/LongArray;

    move-object v1, v0

    .line 154
    .local v1, "clone":Landroid/util/LongArray;
    iget-object v3, p0, Landroid/util/LongArray;->mValues:[J

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    iput-object v3, v1, Landroid/util/LongArray;->mValues:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "clone":Landroid/util/LongArray;
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v2

    .local v2, "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public get(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    .line 166
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public indexOf(J)I
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 182
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    .line 183
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 184
    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 185
    return v0

    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public remove(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    .line 196
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 197
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 194
    return-void
.end method

.method public resize(I)V
    .locals 4
    .param p1, "newSize"    # I

    .prologue
    .line 79
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 80
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    array-length v1, v1

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 85
    :goto_0
    iput p1, p0, Landroid/util/LongArray;->mSize:I

    .line 78
    return-void

    .line 83
    :cond_0
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    goto :goto_0
.end method

.method public set(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 173
    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    .line 174
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 172
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    return v0
.end method

.method public toArray()[J
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
