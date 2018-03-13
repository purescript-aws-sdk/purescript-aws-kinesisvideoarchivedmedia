## Module AWS.KinesisVideoArchivedMedia

<p/>

#### `getMediaForFragmentList`

``` purescript
getMediaForFragmentList :: forall eff. GetMediaForFragmentListInput -> Aff (exception :: EXCEPTION | eff) GetMediaForFragmentListOutput
```

<p>Gets media for a list of fragments (specified by fragment number) from the archived data in a Kinesis video stream.</p> <note> <p>This operation is only available for the AWS SDK for Java. It is not supported in AWS SDKs for other languages.</p> </note> <p>The following limits apply when using the <code>GetMediaForFragmentList</code> API:</p> <ul> <li> <p>A client can call <code>GetMediaForFragmentList</code> up to five times per second per stream. </p> </li> <li> <p>Kinesis Video Streams sends media data at a rate of up to 25 megabytes per second (or 200 megabits per second) during a <code>GetMediaForFragmentList</code> session. </p> </li> </ul>

#### `listFragments`

``` purescript
listFragments :: forall eff. ListFragmentsInput -> Aff (exception :: EXCEPTION | eff) ListFragmentsOutput
```

<p>Returns a list of <a>Fragment</a> objects from the specified stream and start location within the archived data.</p>

#### `ClientLimitExceededException`

``` purescript
newtype ClientLimitExceededException
  = ClientLimitExceededException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.</p>

##### Instances
``` purescript
Newtype ClientLimitExceededException _
Generic ClientLimitExceededException _
Show ClientLimitExceededException
Decode ClientLimitExceededException
Encode ClientLimitExceededException
```

#### `newClientLimitExceededException`

``` purescript
newClientLimitExceededException :: ClientLimitExceededException
```

Constructs ClientLimitExceededException from required parameters

#### `newClientLimitExceededException'`

``` purescript
newClientLimitExceededException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ClientLimitExceededException
```

Constructs ClientLimitExceededException's fields from required parameters

#### `ContentType`

``` purescript
newtype ContentType
  = ContentType String
```

##### Instances
``` purescript
Newtype ContentType _
Generic ContentType _
Show ContentType
Decode ContentType
Encode ContentType
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `Fragment`

``` purescript
newtype Fragment
  = Fragment { "FragmentNumber" :: NullOrUndefined (String), "FragmentSizeInBytes" :: NullOrUndefined (Number), "ProducerTimestamp" :: NullOrUndefined (Timestamp), "ServerTimestamp" :: NullOrUndefined (Timestamp), "FragmentLengthInMilliseconds" :: NullOrUndefined (Number) }
```

<p>Represents a segment of video or other time-delimited data.</p>

##### Instances
``` purescript
Newtype Fragment _
Generic Fragment _
Show Fragment
Decode Fragment
Encode Fragment
```

#### `newFragment`

``` purescript
newFragment :: Fragment
```

Constructs Fragment from required parameters

#### `newFragment'`

``` purescript
newFragment' :: ({ "FragmentNumber" :: NullOrUndefined (String), "FragmentSizeInBytes" :: NullOrUndefined (Number), "ProducerTimestamp" :: NullOrUndefined (Timestamp), "ServerTimestamp" :: NullOrUndefined (Timestamp), "FragmentLengthInMilliseconds" :: NullOrUndefined (Number) } -> { "FragmentNumber" :: NullOrUndefined (String), "FragmentSizeInBytes" :: NullOrUndefined (Number), "ProducerTimestamp" :: NullOrUndefined (Timestamp), "ServerTimestamp" :: NullOrUndefined (Timestamp), "FragmentLengthInMilliseconds" :: NullOrUndefined (Number) }) -> Fragment
```

Constructs Fragment's fields from required parameters

#### `FragmentList`

``` purescript
newtype FragmentList
  = FragmentList (Array Fragment)
```

##### Instances
``` purescript
Newtype FragmentList _
Generic FragmentList _
Show FragmentList
Decode FragmentList
Encode FragmentList
```

#### `FragmentNumberList`

``` purescript
newtype FragmentNumberList
  = FragmentNumberList (Array FragmentNumberString)
```

##### Instances
``` purescript
Newtype FragmentNumberList _
Generic FragmentNumberList _
Show FragmentNumberList
Decode FragmentNumberList
Encode FragmentNumberList
```

#### `FragmentNumberString`

``` purescript
newtype FragmentNumberString
  = FragmentNumberString String
```

##### Instances
``` purescript
Newtype FragmentNumberString _
Generic FragmentNumberString _
Show FragmentNumberString
Decode FragmentNumberString
Encode FragmentNumberString
```

#### `FragmentSelector`

``` purescript
newtype FragmentSelector
  = FragmentSelector { "FragmentSelectorType" :: FragmentSelectorType, "TimestampRange" :: TimestampRange }
```

<p>Describes the time stamp range and time stamp origin of a range of fragments.</p>

##### Instances
``` purescript
Newtype FragmentSelector _
Generic FragmentSelector _
Show FragmentSelector
Decode FragmentSelector
Encode FragmentSelector
```

#### `newFragmentSelector`

``` purescript
newFragmentSelector :: FragmentSelectorType -> TimestampRange -> FragmentSelector
```

Constructs FragmentSelector from required parameters

#### `newFragmentSelector'`

``` purescript
newFragmentSelector' :: FragmentSelectorType -> TimestampRange -> ({ "FragmentSelectorType" :: FragmentSelectorType, "TimestampRange" :: TimestampRange } -> { "FragmentSelectorType" :: FragmentSelectorType, "TimestampRange" :: TimestampRange }) -> FragmentSelector
```

Constructs FragmentSelector's fields from required parameters

#### `FragmentSelectorType`

``` purescript
newtype FragmentSelectorType
  = FragmentSelectorType String
```

##### Instances
``` purescript
Newtype FragmentSelectorType _
Generic FragmentSelectorType _
Show FragmentSelectorType
Decode FragmentSelectorType
Encode FragmentSelectorType
```

#### `GetMediaForFragmentListInput`

``` purescript
newtype GetMediaForFragmentListInput
  = GetMediaForFragmentListInput { "StreamName" :: StreamName, "Fragments" :: FragmentNumberList }
```

##### Instances
``` purescript
Newtype GetMediaForFragmentListInput _
Generic GetMediaForFragmentListInput _
Show GetMediaForFragmentListInput
Decode GetMediaForFragmentListInput
Encode GetMediaForFragmentListInput
```

#### `newGetMediaForFragmentListInput`

``` purescript
newGetMediaForFragmentListInput :: FragmentNumberList -> StreamName -> GetMediaForFragmentListInput
```

Constructs GetMediaForFragmentListInput from required parameters

#### `newGetMediaForFragmentListInput'`

``` purescript
newGetMediaForFragmentListInput' :: FragmentNumberList -> StreamName -> ({ "StreamName" :: StreamName, "Fragments" :: FragmentNumberList } -> { "StreamName" :: StreamName, "Fragments" :: FragmentNumberList }) -> GetMediaForFragmentListInput
```

Constructs GetMediaForFragmentListInput's fields from required parameters

#### `GetMediaForFragmentListOutput`

``` purescript
newtype GetMediaForFragmentListOutput
  = GetMediaForFragmentListOutput { "ContentType" :: NullOrUndefined (ContentType), "Payload" :: NullOrUndefined (Payload) }
```

##### Instances
``` purescript
Newtype GetMediaForFragmentListOutput _
Generic GetMediaForFragmentListOutput _
Show GetMediaForFragmentListOutput
Decode GetMediaForFragmentListOutput
Encode GetMediaForFragmentListOutput
```

#### `newGetMediaForFragmentListOutput`

``` purescript
newGetMediaForFragmentListOutput :: GetMediaForFragmentListOutput
```

Constructs GetMediaForFragmentListOutput from required parameters

#### `newGetMediaForFragmentListOutput'`

``` purescript
newGetMediaForFragmentListOutput' :: ({ "ContentType" :: NullOrUndefined (ContentType), "Payload" :: NullOrUndefined (Payload) } -> { "ContentType" :: NullOrUndefined (ContentType), "Payload" :: NullOrUndefined (Payload) }) -> GetMediaForFragmentListOutput
```

Constructs GetMediaForFragmentListOutput's fields from required parameters

#### `InvalidArgumentException`

``` purescript
newtype InvalidArgumentException
  = InvalidArgumentException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>A specified parameter exceeds its restrictions, is not supported, or can't be used.</p>

##### Instances
``` purescript
Newtype InvalidArgumentException _
Generic InvalidArgumentException _
Show InvalidArgumentException
Decode InvalidArgumentException
Encode InvalidArgumentException
```

#### `newInvalidArgumentException`

``` purescript
newInvalidArgumentException :: InvalidArgumentException
```

Constructs InvalidArgumentException from required parameters

#### `newInvalidArgumentException'`

``` purescript
newInvalidArgumentException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InvalidArgumentException
```

Constructs InvalidArgumentException's fields from required parameters

#### `ListFragmentsInput`

``` purescript
newtype ListFragmentsInput
  = ListFragmentsInput { "StreamName" :: StreamName, "MaxResults" :: NullOrUndefined (PageLimit), "NextToken" :: NullOrUndefined (String), "FragmentSelector" :: NullOrUndefined (FragmentSelector) }
```

##### Instances
``` purescript
Newtype ListFragmentsInput _
Generic ListFragmentsInput _
Show ListFragmentsInput
Decode ListFragmentsInput
Encode ListFragmentsInput
```

#### `newListFragmentsInput`

``` purescript
newListFragmentsInput :: StreamName -> ListFragmentsInput
```

Constructs ListFragmentsInput from required parameters

#### `newListFragmentsInput'`

``` purescript
newListFragmentsInput' :: StreamName -> ({ "StreamName" :: StreamName, "MaxResults" :: NullOrUndefined (PageLimit), "NextToken" :: NullOrUndefined (String), "FragmentSelector" :: NullOrUndefined (FragmentSelector) } -> { "StreamName" :: StreamName, "MaxResults" :: NullOrUndefined (PageLimit), "NextToken" :: NullOrUndefined (String), "FragmentSelector" :: NullOrUndefined (FragmentSelector) }) -> ListFragmentsInput
```

Constructs ListFragmentsInput's fields from required parameters

#### `ListFragmentsOutput`

``` purescript
newtype ListFragmentsOutput
  = ListFragmentsOutput { "Fragments" :: NullOrUndefined (FragmentList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListFragmentsOutput _
Generic ListFragmentsOutput _
Show ListFragmentsOutput
Decode ListFragmentsOutput
Encode ListFragmentsOutput
```

#### `newListFragmentsOutput`

``` purescript
newListFragmentsOutput :: ListFragmentsOutput
```

Constructs ListFragmentsOutput from required parameters

#### `newListFragmentsOutput'`

``` purescript
newListFragmentsOutput' :: ({ "Fragments" :: NullOrUndefined (FragmentList), "NextToken" :: NullOrUndefined (String) } -> { "Fragments" :: NullOrUndefined (FragmentList), "NextToken" :: NullOrUndefined (String) }) -> ListFragmentsOutput
```

Constructs ListFragmentsOutput's fields from required parameters

#### `NotAuthorizedException`

``` purescript
newtype NotAuthorizedException
  = NotAuthorizedException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Status Code: 403, The caller is not authorized to perform an operation on the given stream, or the token has expired.</p>

##### Instances
``` purescript
Newtype NotAuthorizedException _
Generic NotAuthorizedException _
Show NotAuthorizedException
Decode NotAuthorizedException
Encode NotAuthorizedException
```

#### `newNotAuthorizedException`

``` purescript
newNotAuthorizedException :: NotAuthorizedException
```

Constructs NotAuthorizedException from required parameters

#### `newNotAuthorizedException'`

``` purescript
newNotAuthorizedException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> NotAuthorizedException
```

Constructs NotAuthorizedException's fields from required parameters

#### `PageLimit`

``` purescript
newtype PageLimit
  = PageLimit Number
```

##### Instances
``` purescript
Newtype PageLimit _
Generic PageLimit _
Show PageLimit
Decode PageLimit
Encode PageLimit
```

#### `Payload`

``` purescript
newtype Payload
  = Payload String
```

##### Instances
``` purescript
Newtype Payload _
Generic Payload _
Show Payload
Decode Payload
Encode Payload
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Kinesis Video Streams can't find the stream that you specified.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `StreamName`

``` purescript
newtype StreamName
  = StreamName String
```

##### Instances
``` purescript
Newtype StreamName _
Generic StreamName _
Show StreamName
Decode StreamName
Encode StreamName
```

#### `TimestampRange`

``` purescript
newtype TimestampRange
  = TimestampRange { "StartTimestamp" :: Timestamp, "EndTimestamp" :: Timestamp }
```

<p>The range of time stamps for which to return fragments.</p>

##### Instances
``` purescript
Newtype TimestampRange _
Generic TimestampRange _
Show TimestampRange
Decode TimestampRange
Encode TimestampRange
```

#### `newTimestampRange`

``` purescript
newTimestampRange :: Timestamp -> Timestamp -> TimestampRange
```

Constructs TimestampRange from required parameters

#### `newTimestampRange'`

``` purescript
newTimestampRange' :: Timestamp -> Timestamp -> ({ "StartTimestamp" :: Timestamp, "EndTimestamp" :: Timestamp } -> { "StartTimestamp" :: Timestamp, "EndTimestamp" :: Timestamp }) -> TimestampRange
```

Constructs TimestampRange's fields from required parameters


