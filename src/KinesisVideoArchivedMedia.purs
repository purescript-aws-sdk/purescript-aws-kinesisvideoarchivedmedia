

-- | <p/>
module AWS.KinesisVideoArchivedMedia where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "KinesisVideoArchivedMedia" :: String


-- | <p>Gets media for a list of fragments (specified by fragment number) from the archived data in a Kinesis video stream.</p> <note> <p>This operation is only available for the AWS SDK for Java. It is not supported in AWS SDKs for other languages.</p> </note> <p>The following limits apply when using the <code>GetMediaForFragmentList</code> API:</p> <ul> <li> <p>A client can call <code>GetMediaForFragmentList</code> up to five times per second per stream. </p> </li> <li> <p>Kinesis Video Streams sends media data at a rate of up to 25 megabytes per second (or 200 megabits per second) during a <code>GetMediaForFragmentList</code> session. </p> </li> </ul>
getMediaForFragmentList :: forall eff. GetMediaForFragmentListInput -> Aff (exception :: EXCEPTION | eff) GetMediaForFragmentListOutput
getMediaForFragmentList = Request.request serviceName "getMediaForFragmentList" 


-- | <p>Returns a list of <a>Fragment</a> objects from the specified stream and start location within the archived data.</p>
listFragments :: forall eff. ListFragmentsInput -> Aff (exception :: EXCEPTION | eff) ListFragmentsOutput
listFragments = Request.request serviceName "listFragments" 


-- | <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.</p>
newtype ClientLimitExceededException = ClientLimitExceededException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeClientLimitExceededException :: Newtype ClientLimitExceededException _
derive instance repGenericClientLimitExceededException :: Generic ClientLimitExceededException _
instance showClientLimitExceededException :: Show ClientLimitExceededException where
  show = genericShow
instance decodeClientLimitExceededException :: Decode ClientLimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClientLimitExceededException :: Encode ClientLimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ClientLimitExceededException from required parameters
newClientLimitExceededException :: ClientLimitExceededException
newClientLimitExceededException  = ClientLimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ClientLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClientLimitExceededException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ClientLimitExceededException
newClientLimitExceededException'  customize = (ClientLimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ContentType = ContentType String
derive instance newtypeContentType :: Newtype ContentType _
derive instance repGenericContentType :: Generic ContentType _
instance showContentType :: Show ContentType where
  show = genericShow
instance decodeContentType :: Decode ContentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeContentType :: Encode ContentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents a segment of video or other time-delimited data.</p>
newtype Fragment = Fragment 
  { "FragmentNumber" :: NullOrUndefined.NullOrUndefined (String)
  , "FragmentSizeInBytes" :: NullOrUndefined.NullOrUndefined (Number)
  , "ProducerTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "ServerTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "FragmentLengthInMilliseconds" :: NullOrUndefined.NullOrUndefined (Number)
  }
derive instance newtypeFragment :: Newtype Fragment _
derive instance repGenericFragment :: Generic Fragment _
instance showFragment :: Show Fragment where
  show = genericShow
instance decodeFragment :: Decode Fragment where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFragment :: Encode Fragment where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Fragment from required parameters
newFragment :: Fragment
newFragment  = Fragment { "FragmentLengthInMilliseconds": (NullOrUndefined Nothing), "FragmentNumber": (NullOrUndefined Nothing), "FragmentSizeInBytes": (NullOrUndefined Nothing), "ProducerTimestamp": (NullOrUndefined Nothing), "ServerTimestamp": (NullOrUndefined Nothing) }

-- | Constructs Fragment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFragment' :: ( { "FragmentNumber" :: NullOrUndefined.NullOrUndefined (String) , "FragmentSizeInBytes" :: NullOrUndefined.NullOrUndefined (Number) , "ProducerTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "ServerTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "FragmentLengthInMilliseconds" :: NullOrUndefined.NullOrUndefined (Number) } -> {"FragmentNumber" :: NullOrUndefined.NullOrUndefined (String) , "FragmentSizeInBytes" :: NullOrUndefined.NullOrUndefined (Number) , "ProducerTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "ServerTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "FragmentLengthInMilliseconds" :: NullOrUndefined.NullOrUndefined (Number) } ) -> Fragment
newFragment'  customize = (Fragment <<< customize) { "FragmentLengthInMilliseconds": (NullOrUndefined Nothing), "FragmentNumber": (NullOrUndefined Nothing), "FragmentSizeInBytes": (NullOrUndefined Nothing), "ProducerTimestamp": (NullOrUndefined Nothing), "ServerTimestamp": (NullOrUndefined Nothing) }



newtype FragmentList = FragmentList (Array Fragment)
derive instance newtypeFragmentList :: Newtype FragmentList _
derive instance repGenericFragmentList :: Generic FragmentList _
instance showFragmentList :: Show FragmentList where
  show = genericShow
instance decodeFragmentList :: Decode FragmentList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFragmentList :: Encode FragmentList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FragmentNumberList = FragmentNumberList (Array FragmentNumberString)
derive instance newtypeFragmentNumberList :: Newtype FragmentNumberList _
derive instance repGenericFragmentNumberList :: Generic FragmentNumberList _
instance showFragmentNumberList :: Show FragmentNumberList where
  show = genericShow
instance decodeFragmentNumberList :: Decode FragmentNumberList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFragmentNumberList :: Encode FragmentNumberList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FragmentNumberString = FragmentNumberString String
derive instance newtypeFragmentNumberString :: Newtype FragmentNumberString _
derive instance repGenericFragmentNumberString :: Generic FragmentNumberString _
instance showFragmentNumberString :: Show FragmentNumberString where
  show = genericShow
instance decodeFragmentNumberString :: Decode FragmentNumberString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFragmentNumberString :: Encode FragmentNumberString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes the time stamp range and time stamp origin of a range of fragments.</p>
newtype FragmentSelector = FragmentSelector 
  { "FragmentSelectorType" :: (FragmentSelectorType)
  , "TimestampRange" :: (TimestampRange)
  }
derive instance newtypeFragmentSelector :: Newtype FragmentSelector _
derive instance repGenericFragmentSelector :: Generic FragmentSelector _
instance showFragmentSelector :: Show FragmentSelector where
  show = genericShow
instance decodeFragmentSelector :: Decode FragmentSelector where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFragmentSelector :: Encode FragmentSelector where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs FragmentSelector from required parameters
newFragmentSelector :: FragmentSelectorType -> TimestampRange -> FragmentSelector
newFragmentSelector _FragmentSelectorType _TimestampRange = FragmentSelector { "FragmentSelectorType": _FragmentSelectorType, "TimestampRange": _TimestampRange }

-- | Constructs FragmentSelector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFragmentSelector' :: FragmentSelectorType -> TimestampRange -> ( { "FragmentSelectorType" :: (FragmentSelectorType) , "TimestampRange" :: (TimestampRange) } -> {"FragmentSelectorType" :: (FragmentSelectorType) , "TimestampRange" :: (TimestampRange) } ) -> FragmentSelector
newFragmentSelector' _FragmentSelectorType _TimestampRange customize = (FragmentSelector <<< customize) { "FragmentSelectorType": _FragmentSelectorType, "TimestampRange": _TimestampRange }



newtype FragmentSelectorType = FragmentSelectorType String
derive instance newtypeFragmentSelectorType :: Newtype FragmentSelectorType _
derive instance repGenericFragmentSelectorType :: Generic FragmentSelectorType _
instance showFragmentSelectorType :: Show FragmentSelectorType where
  show = genericShow
instance decodeFragmentSelectorType :: Decode FragmentSelectorType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFragmentSelectorType :: Encode FragmentSelectorType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetMediaForFragmentListInput = GetMediaForFragmentListInput 
  { "StreamName" :: (StreamName)
  , "Fragments" :: (FragmentNumberList)
  }
derive instance newtypeGetMediaForFragmentListInput :: Newtype GetMediaForFragmentListInput _
derive instance repGenericGetMediaForFragmentListInput :: Generic GetMediaForFragmentListInput _
instance showGetMediaForFragmentListInput :: Show GetMediaForFragmentListInput where
  show = genericShow
instance decodeGetMediaForFragmentListInput :: Decode GetMediaForFragmentListInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetMediaForFragmentListInput :: Encode GetMediaForFragmentListInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetMediaForFragmentListInput from required parameters
newGetMediaForFragmentListInput :: FragmentNumberList -> StreamName -> GetMediaForFragmentListInput
newGetMediaForFragmentListInput _Fragments _StreamName = GetMediaForFragmentListInput { "Fragments": _Fragments, "StreamName": _StreamName }

-- | Constructs GetMediaForFragmentListInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMediaForFragmentListInput' :: FragmentNumberList -> StreamName -> ( { "StreamName" :: (StreamName) , "Fragments" :: (FragmentNumberList) } -> {"StreamName" :: (StreamName) , "Fragments" :: (FragmentNumberList) } ) -> GetMediaForFragmentListInput
newGetMediaForFragmentListInput' _Fragments _StreamName customize = (GetMediaForFragmentListInput <<< customize) { "Fragments": _Fragments, "StreamName": _StreamName }



newtype GetMediaForFragmentListOutput = GetMediaForFragmentListOutput 
  { "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType)
  , "Payload" :: NullOrUndefined.NullOrUndefined (Payload)
  }
derive instance newtypeGetMediaForFragmentListOutput :: Newtype GetMediaForFragmentListOutput _
derive instance repGenericGetMediaForFragmentListOutput :: Generic GetMediaForFragmentListOutput _
instance showGetMediaForFragmentListOutput :: Show GetMediaForFragmentListOutput where
  show = genericShow
instance decodeGetMediaForFragmentListOutput :: Decode GetMediaForFragmentListOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetMediaForFragmentListOutput :: Encode GetMediaForFragmentListOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetMediaForFragmentListOutput from required parameters
newGetMediaForFragmentListOutput :: GetMediaForFragmentListOutput
newGetMediaForFragmentListOutput  = GetMediaForFragmentListOutput { "ContentType": (NullOrUndefined Nothing), "Payload": (NullOrUndefined Nothing) }

-- | Constructs GetMediaForFragmentListOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetMediaForFragmentListOutput' :: ( { "ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "Payload" :: NullOrUndefined.NullOrUndefined (Payload) } -> {"ContentType" :: NullOrUndefined.NullOrUndefined (ContentType) , "Payload" :: NullOrUndefined.NullOrUndefined (Payload) } ) -> GetMediaForFragmentListOutput
newGetMediaForFragmentListOutput'  customize = (GetMediaForFragmentListOutput <<< customize) { "ContentType": (NullOrUndefined Nothing), "Payload": (NullOrUndefined Nothing) }



-- | <p>A specified parameter exceeds its restrictions, is not supported, or can't be used.</p>
newtype InvalidArgumentException = InvalidArgumentException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidArgumentException :: Newtype InvalidArgumentException _
derive instance repGenericInvalidArgumentException :: Generic InvalidArgumentException _
instance showInvalidArgumentException :: Show InvalidArgumentException where
  show = genericShow
instance decodeInvalidArgumentException :: Decode InvalidArgumentException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidArgumentException :: Encode InvalidArgumentException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidArgumentException from required parameters
newInvalidArgumentException :: InvalidArgumentException
newInvalidArgumentException  = InvalidArgumentException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidArgumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArgumentException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidArgumentException
newInvalidArgumentException'  customize = (InvalidArgumentException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ListFragmentsInput = ListFragmentsInput 
  { "StreamName" :: (StreamName)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (PageLimit)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  , "FragmentSelector" :: NullOrUndefined.NullOrUndefined (FragmentSelector)
  }
derive instance newtypeListFragmentsInput :: Newtype ListFragmentsInput _
derive instance repGenericListFragmentsInput :: Generic ListFragmentsInput _
instance showListFragmentsInput :: Show ListFragmentsInput where
  show = genericShow
instance decodeListFragmentsInput :: Decode ListFragmentsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListFragmentsInput :: Encode ListFragmentsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListFragmentsInput from required parameters
newListFragmentsInput :: StreamName -> ListFragmentsInput
newListFragmentsInput _StreamName = ListFragmentsInput { "StreamName": _StreamName, "FragmentSelector": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListFragmentsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFragmentsInput' :: StreamName -> ( { "StreamName" :: (StreamName) , "MaxResults" :: NullOrUndefined.NullOrUndefined (PageLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) , "FragmentSelector" :: NullOrUndefined.NullOrUndefined (FragmentSelector) } -> {"StreamName" :: (StreamName) , "MaxResults" :: NullOrUndefined.NullOrUndefined (PageLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) , "FragmentSelector" :: NullOrUndefined.NullOrUndefined (FragmentSelector) } ) -> ListFragmentsInput
newListFragmentsInput' _StreamName customize = (ListFragmentsInput <<< customize) { "StreamName": _StreamName, "FragmentSelector": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListFragmentsOutput = ListFragmentsOutput 
  { "Fragments" :: NullOrUndefined.NullOrUndefined (FragmentList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListFragmentsOutput :: Newtype ListFragmentsOutput _
derive instance repGenericListFragmentsOutput :: Generic ListFragmentsOutput _
instance showListFragmentsOutput :: Show ListFragmentsOutput where
  show = genericShow
instance decodeListFragmentsOutput :: Decode ListFragmentsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListFragmentsOutput :: Encode ListFragmentsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListFragmentsOutput from required parameters
newListFragmentsOutput :: ListFragmentsOutput
newListFragmentsOutput  = ListFragmentsOutput { "Fragments": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListFragmentsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFragmentsOutput' :: ( { "Fragments" :: NullOrUndefined.NullOrUndefined (FragmentList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"Fragments" :: NullOrUndefined.NullOrUndefined (FragmentList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListFragmentsOutput
newListFragmentsOutput'  customize = (ListFragmentsOutput <<< customize) { "Fragments": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



-- | <p>Status Code: 403, The caller is not authorized to perform an operation on the given stream, or the token has expired.</p>
newtype NotAuthorizedException = NotAuthorizedException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeNotAuthorizedException :: Newtype NotAuthorizedException _
derive instance repGenericNotAuthorizedException :: Generic NotAuthorizedException _
instance showNotAuthorizedException :: Show NotAuthorizedException where
  show = genericShow
instance decodeNotAuthorizedException :: Decode NotAuthorizedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotAuthorizedException :: Encode NotAuthorizedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs NotAuthorizedException from required parameters
newNotAuthorizedException :: NotAuthorizedException
newNotAuthorizedException  = NotAuthorizedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs NotAuthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotAuthorizedException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> NotAuthorizedException
newNotAuthorizedException'  customize = (NotAuthorizedException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype PageLimit = PageLimit Number
derive instance newtypePageLimit :: Newtype PageLimit _
derive instance repGenericPageLimit :: Generic PageLimit _
instance showPageLimit :: Show PageLimit where
  show = genericShow
instance decodePageLimit :: Decode PageLimit where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePageLimit :: Encode PageLimit where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Payload = Payload String
derive instance newtypePayload :: Newtype Payload _
derive instance repGenericPayload :: Generic Payload _
instance showPayload :: Show Payload where
  show = genericShow
instance decodePayload :: Decode Payload where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePayload :: Encode Payload where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Kinesis Video Streams can't find the stream that you specified.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where
  show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype StreamName = StreamName String
derive instance newtypeStreamName :: Newtype StreamName _
derive instance repGenericStreamName :: Generic StreamName _
instance showStreamName :: Show StreamName where
  show = genericShow
instance decodeStreamName :: Decode StreamName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStreamName :: Encode StreamName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The range of time stamps for which to return fragments.</p>
newtype TimestampRange = TimestampRange 
  { "StartTimestamp" :: (Types.Timestamp)
  , "EndTimestamp" :: (Types.Timestamp)
  }
derive instance newtypeTimestampRange :: Newtype TimestampRange _
derive instance repGenericTimestampRange :: Generic TimestampRange _
instance showTimestampRange :: Show TimestampRange where
  show = genericShow
instance decodeTimestampRange :: Decode TimestampRange where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTimestampRange :: Encode TimestampRange where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TimestampRange from required parameters
newTimestampRange :: Types.Timestamp -> Types.Timestamp -> TimestampRange
newTimestampRange _EndTimestamp _StartTimestamp = TimestampRange { "EndTimestamp": _EndTimestamp, "StartTimestamp": _StartTimestamp }

-- | Constructs TimestampRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTimestampRange' :: Types.Timestamp -> Types.Timestamp -> ( { "StartTimestamp" :: (Types.Timestamp) , "EndTimestamp" :: (Types.Timestamp) } -> {"StartTimestamp" :: (Types.Timestamp) , "EndTimestamp" :: (Types.Timestamp) } ) -> TimestampRange
newTimestampRange' _EndTimestamp _StartTimestamp customize = (TimestampRange <<< customize) { "EndTimestamp": _EndTimestamp, "StartTimestamp": _StartTimestamp }

