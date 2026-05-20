DEFINE TABLE input_envelope SCHEMAFULL;

DEFINE FIELD source ON TABLE input_envelope TYPE string;
DEFINE FIELD actor ON TABLE input_envelope TYPE object;
DEFINE FIELD task ON TABLE input_envelope TYPE object;
DEFINE FIELD context ON TABLE input_envelope TYPE object;
DEFINE FIELD environment ON TABLE input_envelope TYPE object;
DEFINE FIELD knowledge ON TABLE input_envelope TYPE object;
DEFINE FIELD priority ON TABLE input_envelope TYPE string;
DEFINE FIELD risk_hint ON TABLE input_envelope TYPE string;
DEFINE FIELD correlation_id ON TABLE input_envelope TYPE string;
DEFINE FIELD idempotency_key ON TABLE input_envelope TYPE string;
DEFINE FIELD status ON TABLE input_envelope TYPE string;
DEFINE FIELD created_at ON TABLE input_envelope TYPE datetime VALUE time::now();

DEFINE INDEX input_envelope_correlation_idx ON TABLE input_envelope FIELDS correlation_id;
DEFINE INDEX input_envelope_status_idx ON TABLE input_envelope FIELDS status;
