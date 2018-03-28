## Module AWS.KinesisVideoArchivedMedia.Requests

#### `getMediaForFragmentList`

``` purescript
getMediaForFragmentList :: forall eff. Service -> GetMediaForFragmentListInput -> Aff (exception :: EXCEPTION | eff) GetMediaForFragmentListOutput
```

<p>Gets media for a list of fragments (specified by fragment number) from the archived data in a Kinesis video stream.</p> <note> <p>This operation is only available for the AWS SDK for Java. It is not supported in AWS SDKs for other languages.</p> </note> <p>The following limits apply when using the <code>GetMediaForFragmentList</code> API:</p> <ul> <li> <p>A client can call <code>GetMediaForFragmentList</code> up to five times per second per stream. </p> </li> <li> <p>Kinesis Video Streams sends media data at a rate of up to 25 megabytes per second (or 200 megabits per second) during a <code>GetMediaForFragmentList</code> session. </p> </li> </ul>

#### `listFragments`

``` purescript
listFragments :: forall eff. Service -> ListFragmentsInput -> Aff (exception :: EXCEPTION | eff) ListFragmentsOutput
```

<p>Returns a list of <a>Fragment</a> objects from the specified stream and start location within the archived data.</p>


